# development-tools

A collection of shell scripts and guides to quickly set up a fresh Ubuntu system with essential development tools.

## Contents

- **[scripts/install_docker.sh](scripts/install_docker.sh)**  
  Automates the installation of Docker Engine and Docker Compose on Ubuntu.  
  See [README_docker_setup_guide.md](README_docker_setup_guide.md) for detailed instructions.

- **[README_docker_setup_guide.md](README_docker_setup_guide.md)**  
  Step-by-step guide for installing Docker, verifying the installation, and logging in to Docker Hub securely.

- **[README_git_setup_guide.md](README_git_setup_guide.md)**  
  Instructions for installing and configuring Git, including recommended settings and secure authentication using Git Credential Manager.

## Usage

1. **Docker Setup**
   - Make the script executable:  
     `chmod +x scripts/install_docker.sh`
   - Run the installation script:  
     `./scripts/install_docker.sh`
   - Log out and log back in to apply group changes.
   - Verify installation:  
     `docker run hello-world`

2. **Git Setup**
   - Follow the steps in [README_git_setup_guide.md](README_git_setup_guide.md) to install and configure Git.

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.