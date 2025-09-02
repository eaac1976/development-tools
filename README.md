# Development Tools Setup

A collection of scripts and guides to quickly set up a fresh Ubuntu system with essential development tools.

## Table of Contents

### Setup Scripts
- [Docker Installation Script](scripts/install_docker.sh)
- [Git Installation Script](scripts/install_git.sh)
- [Visual Studio Code Installation Script](scripts/install_VSCode.sh)

### Guides
- [Docker Guide](docs/docker_setup.md)
- [Git Guide](docs/git_guide.md)
- [Git Setup Guide](docs/git_setup.md)
- [Visual Studio Code Guide](docs/VSCode_setup.md)

## Quick Start

### 1. Docker Setup

```bash
chmod +x scripts/install_docker.sh
./scripts/install_docker.sh
```
Log out and log back in to apply group changes, then verify installation:
```bash
docker run hello-world
```
See [Docker Guide](docs/docker_setup.md) for more details.

### 2. Git Setup

```bash
chmod +x scripts/install_git.sh
./scripts/install_git.sh
```
See [Git Guide](docs/git_guide.md) and [Git Setup Guide](docs/git_setup.md) for configuration and usage instructions.

### 3. Visual Studio Code Setup

```bash
chmod +x scripts/install_VSCode.sh
./scripts/install_VSCode.sh
```
See [Visual Studio Code Guide](docs/VSCode_setup.md) for installation and settings sync instructions.

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.