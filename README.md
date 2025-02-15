
# HappyServers Build

This repository serves as the main project for the HappyServers application. It includes submodules for both the frontend and backend, and is containerized using Docker for seamless deployment.

## Project Structure

```
happyservers-build/
├── backend/              # Backend submodule (Node.js)
├── frontend/             # Frontend submodule (Vue + Vite)
├── .gitmodules           # Git submodule configuration
├── docker-compose.yml    # Docker Compose configuration
├── Dockerfile            # Docker configuration
├── README.md             # Project documentation
└── update.bat            # Batch script for updating the project
```

## Submodules

### Backend
- **Path**: `backend`
- **Repository**: [HappyServers-Backend](https://github.com/Verttigo28/HappyServers-Backend)
- **Technology**: Node.js

### Frontend
- **Path**: `frontend`
- **Repository**: [HappyServers-Front](https://github.com/Verttigo28/HappyServers-Front)
- **Technology**: Vue + Vite

## Prerequisites

Before running the project, ensure the following tools are installed on your system:

- [Git](https://git-scm.com/) (for cloning submodules)
- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

## Setup Instructions

1. **Clone the Repository**
   ```bash
   git clone --recurse-submodules git@github.com:Verttigo28/HappyServers-Build.git
   ```

2. **Initialize Submodules (if not cloned recursively)**
   ```bash
   git submodule update --init --recursive
   ```

3. **Build and Start the Containers**
   ```bash
   docker-compose up --build
   ```

4. **Access the Application**
    - App: `http://localhost:5000`

## Update Submodules

To pull the latest changes for the submodules:
```bash
git submodule update --remote
```

## Docker Setup

- **`Dockerfile`**: Contains the configuration for building the main image.
- **`docker-compose.yml`**: Orchestrates the frontend and backend containers.

## Additional Notes

- Make sure to configure environment variables for both the backend and frontend as needed.
- For detailed information about each submodule, refer to their respective README files.
