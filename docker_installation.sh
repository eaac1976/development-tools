#!/bin/bash

# This script automates the installation of Docker and Docker Compose on Ubuntu.

# --- Update and Install Dependencies ---
echo "Updating package list and installing dependencies..."
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg

# --- Add Docker's Official GPG Key ---
echo "Adding Docker's GPG key..."
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# --- Set Up Docker Repository ---
echo "Setting up Docker repository..."
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# --- Install Docker Engine ---
echo "Installing Docker Engine..."
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# --- Add User to Docker Group (to run docker without sudo) ---
echo "Adding current user to the docker group..."
sudo usermod -aG docker $USER

echo ""
echo "✅ Docker installation complete!"
echo "👉 You need to log out and log back in for the group changes to take effect."
echo "After logging back in, test the installation by running: docker run hello-world"
