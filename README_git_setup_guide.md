# Git Installation and Configuration Guide

This guide provides step-by-step instructions for installing Git on Ubuntu and configuring it for secure authentication and recommended settings.

## Part 1: Installing Git

To install Git, open your terminal and run:

```bash
sudo apt update
sudo apt install git
```

## Part 2: Configuring Git

After installation, configure your user name and email:

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

You can verify your configuration with:

```bash
git config --list
```

## Part 3: Recommended Settings

Set recommended options for better usability:

```bash
git config --global core.editor "code --wait"
git config --global color.ui auto
git config --global pull.rebase false
```

## Part 4: Secure Authentication with Git Credential Manager

To securely store your credentials, install Git Credential Manager:

1. Download the latest `.deb` package from the [Git Credential Manager releases page](https://github.com/GitCredentialManager/git-credential-manager/releases).

2. Install the package (replace the filename with the actual downloaded file):

   ```bash
   sudo dpkg -i git-credential-manager-*.deb
   ```

3. Enable Git Credential Manager:

   ```bash
   git-credential-manager configure
   ```

## Part 5: Testing Your Setup

Clone a repository to test your configuration:

```bash
git clone https://github.com/yourusername/your-repo.git
```

If prompted for credentials, Git Credential Manager will handle authentication securely.

---

For more details, see the [official Git documentation](https://git-scm.com/doc).