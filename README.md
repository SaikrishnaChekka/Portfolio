# Minimal Static Portfolio

A simple, easy-to-use static portfolio website scaffold for Sai Krishna Chekka. Open `index.html` in your browser or serve the folder with a static server.

## Files

- `index.html` — main page
- `styles.css` — styles
- `script.js` — small interactivity (theme toggle, contact form handler)

## Run locally

Open `index.html` directly in your browser, or run a simple HTTP server (recommended):

```powershell
# Serve on port 8000 and open http://localhost:8000
python -m http.server 8000
```

Then open `http://localhost:8000` in your browser.

## Customize

- Replace the content in `index.html` to add or reorder sections.
- Swap project cards with your screenshots and links.
- Edit colors in `styles.css`.

Contact: `schekka@rockets.utoledo.edu` • `(419) 378-6513` • LinkedIn: https://www.linkedin.com/in/saikrishna-chekka-881339221

## Deploy

- Push this folder to GitHub and enable GitHub Pages for the repository (branch `main` or `gh-pages`).

Automated GitHub Pages deployment is included via Actions. Steps:

1. Create a new GitHub repository (private or public).
2. From PowerShell in this folder run:

```powershell
# replace the URL with your new repo HTTPS URL
.
.\deploy.ps1 -remoteUrl "https://github.com/<your-username>/<repo>.git"
```

3. Wait for GitHub Actions to run (check the Actions tab). The workflow publishes the site to the `gh-pages` branch.

Your site will be available at `https://<your-username>.github.io/<repo>/` (or the custom domain you configure in repo Pages settings).
