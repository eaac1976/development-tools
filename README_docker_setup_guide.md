# Docker Installation and Configuration on Ubuntu
This guide provides instructions on how to install Docker Engine and Docker Compose using the provided script and how to log in to your Docker Hub account.

# Part 1: Installing Docker Using the Script
The install_docker.sh script automates the entire installation process by adding the official Docker repository and installing the necessary packages.

1. Make the Script Executable
Before you can run the script, you need to give it execute permissions. Open your terminal and run the following command from the root of the repository:

chmod +x scripts/install_docker.sh

2. Run the Installation Script
Now, execute the script. It uses sudo for the necessary commands, so you will be prompted for your password.

./scripts/install_docker.sh

3. Log Out and Log Back In
As the script's output indicates, this final step is mandatory. You must log out of your Ubuntu session and log back in. This applies the user group change that allows you to run docker commands without needing sudo every time.

# Part 2: Verifying the Installation
After logging back in, you can verify that Docker has been installed correctly.

Open a new terminal.

Run the "hello-world" container:
This command downloads a test image and runs it in a container.

docker run hello-world

If the installation was successful, you will see a message that begins with "Hello from Docker!". This confirms that your setup is working correctly.

# Part 3: Logging in to Docker Hub
Logging in to Docker Hub is necessary if you want to push your own custom images or pull private images from your account.

Best Practice: Use a Personal Access Token
For security reasons, it is highly recommended to use a Personal Access Token (PAT) instead of your actual Docker Hub password when logging in from the command line.

Generate a Token on Docker Hub:

Log in to your account on the Docker Hub website.

Click on your username in the top-right corner and go to Account Settings.

Navigate to the Security tab.

Click on New Access Token.

Give your token a descriptive name (e.g., ubuntu-dev-machine), set its permissions (e.g., Read, Write, Delete), and click Generate.

IMPORTANT: Copy the token immediately and save it in a safe place. You will not be able to see it again.

2. Log in from the Terminal
Now, run the docker login command in your terminal.

docker login

You will be prompted for your credentials:

Username: Enter your Docker Hub username.

Password: Paste the Personal Access Token you just generated.

Upon successful authentication, you will see a "Login Succeeded" message. Your credentials are now stored locally, and you can interact with your Docker Hub repositories.