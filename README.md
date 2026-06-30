# DevOps Project 1 — Containerized Flask Web Application

A lightweight Flask web application containerized with Docker, built as part of a hands-on DevOps learning project. It demonstrates a simple multi-route Flask app served from a UBI9-based container image.

## 📌 Overview

This project showcases the fundamentals of containerizing a Python web application:

- Building a Flask app with multiple routes and Jinja2 templates
- Packaging the application into a Docker image using a Red Hat UBI9 base image
- Running the containerized app as a portable, reproducible web service

## 🛠️ Tech Stack

| Component | Technology |
|---|---|
| Language | Python 3 |
| Web Framework | Flask |
| Templating | Jinja2 (HTML) |
| Containerization | Docker |
| Base Image | `redhat/ubi9:latest` |

## 📁 Project Structure

```
DevOps-Project-1_Containerized_Flask_Web_Application/
├── templates/
│   ├── index.html      # Home page
│   └── about.html      # About page
├── Dockerfile           # Container build instructions
├── main.py              # Flask application entry point
└── README.md            # Project documentation
```

## 🚏 Application Routes

| Route | Description |
|---|---|
| `/` | Welcome message |
| `/index` | Renders `index.html` |
| `/about` | Renders `about.html` |

## 🚀 Getting Started

### Prerequisites
- Docker installed on your machine
- (Optional) Python 3 if you want to run it locally without Docker

### 1. Clone the repository
```bash
git clone https://github.com/Sawangupta043/DevOps-Project-1_Containerized_Flask_Web_Application.git
cd DevOps-Project-1_Containerized_Flask_Web_Application
```

### 2. Build the Docker image
```bash
docker build -t flask-web-app .
```

### 3. Run the container
```bash
docker run -d -p 5000:5000 --name flask-app flask-web-app
```

### 4. Access the application
Open your browser and navigate to:
```
http://localhost:5000/
http://localhost:5000/index
http://localhost:5000/about
```

## 🐳 Dockerfile Summary

The image is built on `redhat/ubi9:latest`, installs Python 3 and Flask via `dnf`/`pip3`, and runs the application using `main.py` as the container's entry point.

## 🧭 Key Learnings

- Writing a minimal, production-style Flask application with template rendering
- Creating a Dockerfile from a Red Hat UBI base image
- Building and running containerized Python applications
- Structuring a project for clarity and maintainability

## 📈 Future Improvements

- Add a `requirements.txt` for dependency management
- Push the image to Docker Hub / a container registry
- Add CI/CD pipeline (GitHub Actions) for automated builds
- Add health-check endpoint and basic logging
- Deploy to a cloud platform (AWS/Azure/Kubernetes)

## 👤 Author

**Sawan Gupta**
GitHub: [@Sawangupta043](https://github.com/Sawangupta043)

---
⭐ If you found this project useful, consider giving it a star on GitHub!
