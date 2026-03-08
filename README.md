# 🚀 Portfolio — Coming Soon

A personal portfolio landing page, containerized with Docker and deployed automatically via GitHub Actions CI/CD.

![CI/CD](https://github.com/hendzormati/Portfolio/actions/workflows/ci-cd.yml/badge.svg)

---

## 📋 Description

A minimal "coming soon" page built with HTML, CSS, and JavaScript, served by an nginx web server inside a Docker container. The page is a placeholder while the full portfolio is under construction.

The project demonstrates a complete DevOps workflow: local development, Docker containerization, automated CI/CD with GitHub Actions, and deployment to both Docker Hub and GitHub Pages.

**Stack:**
- HTML / CSS / JavaScript
- Docker (nginx:alpine)
- GitHub Actions (CI/CD)
- GitHub Pages (live deployment)
- Docker Hub (public image registry)

---

## 🌐 Live Site

👉 [https://hendzormati.github.io/Portfolio/](https://hendzormati.github.io/Portfolio/)

---

## 🐳 Docker Image

The image is publicly available on Docker Hub:

```bash
docker pull hendzormati/portfolio:latest
```

Run it locally in one command:

```bash
docker run -d -p 8080:80 hendzormati/portfolio:latest
# Open http://localhost:8080
```

---

## 🛠️ Run Locally

### Prerequisites
- [Docker](https://docs.docker.com/get-docker/) installed
- [Git](https://git-scm.com/) installed

### With Docker Compose (recommended)

```bash
# 1. Clone the repository
git clone https://github.com/hendzormati/Portfolio.git
cd Portfolio

# 2. Start the container
docker-compose up -d

# 3. Open in your browser
open http://localhost:8080

# 4. Stop the container
docker-compose down
```

### Build the image yourself

```bash
docker build -t portfolio .
docker run -d -p 8080:80 portfolio
```

### Without Docker

Just open `index.html` directly in your browser.

---

## ⚙️ CI/CD Pipeline

On every push to `main`, GitHub Actions automatically:

| Step | Description |
|------|-------------|
| 🔍 Validate | Checks that `index.html` exists and is valid |
| 🐳 Build | Builds the Docker image |
| 🧪 Test | Starts the container and verifies it responds on port 8080 |
| 📤 Push | Publishes the image to Docker Hub with tags `latest` + `sha-<commit>` |
| 🚀 Deploy | Deploys the site to GitHub Pages |
| 🏷️ Tag | Creates a timestamped Git tag (e.g. `v1.0.20260308120000`) |

Pipeline only pushes to Docker Hub and deploys on pushes to `main` — pull requests only trigger the build and test steps.

---

## 🔐 Required GitHub Secrets

To run the full pipeline (Docker Hub push), set these secrets in your repo:
`Settings → Secrets and variables → Actions`

| Secret | Description |
|--------|-------------|
| `DOCKERHUB_USERNAME` | Your Docker Hub username |
| `DOCKERHUB_TOKEN` | Docker Hub access token (not your password) |

---

## 🗺️ What's Next

The placeholder page will be replaced with a full portfolio including:
- Projects showcase
- Skills & experience
- Contact form (backed by a Node.js API + database)
