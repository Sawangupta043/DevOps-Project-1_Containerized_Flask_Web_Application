# DevOps Project 1: Containerized Flask Web Application

A clean, production-ready implementation demonstrating foundational DevOps practices by containerizing a Python Flask web application using an enterprise-grade Red Hat Universal Base Image (UBI).

---

## 🚀 Features
- **Application Framework:** Lightweight Python Flask application handling dynamic web routing.
- **Enterprise Base OS:** Built on top of `redhat/ubi8` for standardized, secure deployments.
- **Containerization:** End-to-end containerized setup ready to be deployed across any environment.

---

## 📁 Repository Structure

```text
├── templates/
│   ├── index.html       # Landing page template
│   └── about.html       # Secondary description page template
├── Dockerfile           # Automated container build instructions
└── main.py              # Application entry point & web routing engine

---

'''## 🛠️ Code Architecture

### 1. Application Routing (`main.py`)
The application defines three primary endpoints bound to open interfaces:

* **`/`** ➔ Serves an inline welcome message header.
* **`/index`** ➔ Renders the home landing layout page (`index.html`).
* **`/about`** ➔ Renders the application info view page (`about.html`).

### 2. Container Environment (`Dockerfile`)
The environment setup uses a deterministic, predictable build workflow to minimize layer overhead:

```dockerfile
FROM redhat/ubi8:latest
RUN dnf -y install python3
RUN pip3 install flask
CMD ["python3" , "main.py"]

---

## ⚙️ Deployment Instructions

Ensure you have Docker installed on your host system, then execute the following commands in your terminal to build and run the application.

### Step 1: Build the Image
Navigate to the root directory containing the `Dockerfile` and run:

```bash
docker build -t devops-project-1:latest .

Step 2: Spin up the Container
Run the built image in detached mode while mapping the required networking ports:

Bash
docker run -d -p 5000:5000 devops-project-1:latest
Step 3: Verify Live Endpoints
Once the container status is healthy, access the running application by navigating to:

Welcome Route: http://localhost:5000/

Index Route: http://localhost:5000/index

About Route: http://localhost:5000/about

## 📌 Author
## Sawan Gupta 
