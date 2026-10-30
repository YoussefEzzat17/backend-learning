# Backend Learning

A personal knowledge base for learning **backend engineering** (Java, SQL, Spring Boot), written in [Obsidian](https://obsidian.md) and published as a static website with [Quartz](https://quartz.jzhao.xyz) on GitHub Pages.

## Purpose

- Keep study notes in plain Markdown, organized and cross-linked.
- Publish only the notes meant to be public, as a fast, searchable website.
- Automate the pipeline so that editing a note is all it takes to update the site.

## Features

- Full-text search, graph view, backlinks and internal links
- Obsidian-flavored Markdown (wikilinks, callouts, frontmatter tags)
- Code syntax highlighting
- Automatic build and deployment with GitHub Actions

## Project Structure

```
.
├── Backend Engineering/          # Obsidian vault
│   └── 99 - Published/           # Notes that are published (the only folder tracked by Git)
├── quartz/                       # Quartz static site generator
│   ├── content -> ../Backend Engineering/99 - Published   (symlink)
│   └── quartz.config.yaml        # Site configuration
├── scripts/
│   └── sync.sh                   # Commits and pushes changes to the notes
└── .github/workflows/
    └── deploy.yml                # Builds the site and deploys it to GitHub Pages
```

Other folders in the vault (for example private study notes) are excluded through `.gitignore` and are never committed.

## How It Works

1. Notes are written in Obsidian inside `Backend Engineering/99 - Published`.
2. Quartz reads that folder through the `quartz/content` symlink.
3. On every push to `main`, the GitHub Actions workflow builds the site and deploys it to GitHub Pages.

## Getting Started

### Prerequisites

- Node.js 22 or newer
- npm 10.9.2 or newer
- Git

### Run Locally

```bash
git clone <repository-url>
cd <repository-folder>/quartz
npm install
npx quartz plugin install
npx quartz build --serve
```

Open http://localhost:8080 to preview the site. It rebuilds automatically when a note changes.

### Build for Production

```bash
cd quartz
npx quartz build
```

The generated site is written to `quartz/public`.

## Using the Notes

- **Edit notes:** open the `Backend Engineering` folder as a vault in Obsidian and work inside `99 - Published`.
- **Publish changes:** commit and push to `main`, or run `scripts/sync.sh` to do it in one step.
- **Add a topic:** create a folder under `99 - Published` (for example `Java/`) and link notes with `[[wikilinks]]`.

## Deployment

1. In the repository settings, open **Pages** and set **Source** to **GitHub Actions**.
2. Update `baseUrl` in `quartz/quartz.config.yaml` to match your Pages address.
3. Push to `main`. The `Deploy Quartz to GitHub Pages` workflow publishes the site.

## Privacy Notes

Everything inside `99 - Published` becomes public. Do not put credentials, API keys, personal data or confidential work material in published notes.

## Built With

- [Obsidian](https://obsidian.md): note taking
- [Quartz](https://quartz.jzhao.xyz): static site generator
- [GitHub Actions](https://github.com/features/actions) and [GitHub Pages](https://pages.github.com): CI/CD and hosting

## License

Quartz is distributed under the MIT License (see `quartz/LICENSE.txt`). The notes are for personal learning purposes.
