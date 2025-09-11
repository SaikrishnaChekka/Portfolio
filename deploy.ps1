Param(
  [Parameter(Mandatory=$true)][string]$remoteUrl
)

Write-Host "Initializing git repository and pushing to $remoteUrl"

if (-not (Test-Path -Path .git)) {
  git init
  git checkout -b main
} else {
  Write-Host "Git repo already initialized"
}

git add .

git commit -m "Initial portfolio site commit" -q || Write-Host "Nothing to commit"

git remote remove origin -ErrorAction SilentlyContinue

git remote add origin $remoteUrl

git push -u origin main

Write-Host "Push complete. After pushing, GitHub Actions will build and deploy to the 'gh-pages' branch."
Write-Host "Open: https://github.com/<your-username>/<repo>/settings/pages to verify Pages settings if needed."
