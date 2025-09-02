#!/bin/bash

# Install Visual Studio Code from the official Microsoft repository
ARCH=$(dpkg --print-architecture)

# Import the Microsoft GPG key
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/packages.microsoft.gpg

# Add the VS Code repository based on CPU architecture
echo "deb [arch=${ARCH} signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | \
  sudo tee /etc/apt/sources.list.d/vscode.list

# Update package lists and install code
sudo apt update
sudo apt install -y code

echo "Visual Studio Code installation complete for architecture: ${ARCH}"