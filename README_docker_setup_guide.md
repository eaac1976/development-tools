# Docker Setup Guide for Ubuntu

This guide walks you through installing Docker Engine and Docker Compose on Ubuntu.

## Installation Steps

1. **Run the Installation Script**
   ```bash
   chmod +x scripts/install_docker.sh
   ./scripts/install_docker.sh
   ```

2. **Log Out and Back In**
   - This applies Docker group changes.

3. **Verify Installation**
   ```bash
   docker run hello-world
   ```

## Logging in to Docker Hub

To log in securely:
```bash
docker login
```
Enter your Docker Hub credentials when prompted.

## Troubleshooting

- If you see permission errors, ensure your user is in the `docker` group.
- For more help, see [Docker Docs](https://docs.docker.com/engine/install/ubuntu/).