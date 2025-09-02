# Docker Installation and Login Guide

This guide provides instructions on how to install Docker and Docker Compose using the provided shell script, and how to log in to your Docker Hub account from the command line.

---

## 1. Installation

The included `install_docker.sh` script automates the process of setting up Docker's official repository and installing Docker Engine and the Docker Compose plugin on Ubuntu.

**Steps:**

- **Make the script executable:**
  ```bash
  chmod +x install_docker.sh
  ```

- **Run the installation script:**
  ```bash
  sudo ./install_docker.sh
  ```

The script will update your system and install the latest stable versions of Docker.

---

## 2. Post-Installation: Running Docker Without `sudo`

By default, Docker requires administrator (`sudo`) privileges. To run Docker commands as a regular user, you must add your user to the `docker` group.

The installation script automatically runs:
```bash
sudo usermod -aG docker $USER
```

**IMPORTANT:**  
This change does **not** take effect immediately in your current terminal session. You must start a new session for your new group membership to be recognized.

**You have two options:**
- **Option 1 (Recommended):** Log out of your system and log back in.
- **Option 2 (For SSH sessions):** Disconnect and reconnect your SSH session.

After doing one of these, you will be able to run all Docker commands without `sudo`.

---

## 3. Verify the Installation

Once you have logged back in or started a new session, verify that everything is working correctly **without** `sudo`.

- **Check the Docker Engine:**
  ```bash
  docker run hello-world
  ```
  You should see a confirmation message from Docker without any permission errors.

- **Check Docker Compose:**
  ```bash
  docker compose version
  ```
  This will output the version number of the plugin.

---

## 4. Logging in to Docker Hub

To push and pull private images, you need to log in to your Docker Hub account.

- **Start the device login process:**
  ```bash
  docker login
  ```

- **Get your one-time code:**  
  The terminal will display a message asking you to visit a URL and enter a code:
  ```
  Visit https://docker.com/device
  And enter this code: XXXX-XXXX
  ```

- **Activate in your web browser:**  
  Open the URL in a browser, enter the code, and click **Authorize** when prompted.

- **Confirmation:**  
  Your terminal will show a `Login Succeeded` message, and you will be authenticated.

---