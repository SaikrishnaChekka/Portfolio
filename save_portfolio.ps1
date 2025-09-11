$portfolioPath = Join-Path $env:USERPROFILE "Documents\portfolio"

# Create portfolio directory
New-Item -ItemType Directory -Path $portfolioPath -Force

# Create all the necessary files
$files = @{
    "index.html" = Get-Content -Path ".\index.html" -Raw
    "styles.css" = Get-Content -Path ".\styles.css" -Raw
    "script.js" = Get-Content -Path ".\script.js" -Raw
    "README.md" = Get-Content -Path ".\README.md" -Raw
    ".github\workflows\deploy.yml" = Get-Content -Path ".\.github\workflows\deploy.yml" -Raw
    "deploy.ps1" = Get-Content -Path ".\deploy.ps1" -Raw
}

foreach ($file in $files.Keys) {
    $filePath = Join-Path $portfolioPath $file
    $directory = Split-Path $filePath -Parent
    
    # Create directory if it doesn't exist
    if (!(Test-Path $directory)) {
        New-Item -ItemType Directory -Path $directory -Force
    }
    
    # Create file
    $files[$file] | Set-Content -Path $filePath -Force
}

Write-Host "Portfolio files saved to: $portfolioPath"
Write-Host "You can now open this folder in VS Code to continue with deployment."