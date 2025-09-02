# Git Installation and Configuration Guide

Step-by-step instructions for installing Git on Ubuntu and configuring secure authentication.

## 1. Install Git

```bash
sudo apt update
sudo apt install git
```

## 2. Configure Git

Set your name and email:
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```
Verify:
```bash
git config --list
```

## 3. Recommended Settings

```bash
git config --global core.editor "code --wait"
git config --global color.ui auto
git config --global pull.rebase false
```

## 4. Secure Authentication with Git Credential Manager

- Download the latest `.deb` from [Git Credential Manager releases](https://github.com/GitCredentialManager/git-credential-manager/releases).
- Install:
  ```bash
  sudo dpkg -i git-credential-manager-*.deb
  ```
- Enable:
  ```bash
  git-credential-manager configure
  ```

### How It Works

- When you run a Git command that needs authentication (`clone`, `push`, `pull`), Git Credential Manager will open a browser window.
- Log in with your credentials and authorize access.
- The manager stores your credentials securely; you won't need to enter tokens or passwords again.

## 5. Test Your Setup

```bash
git clone https://github.com/yourusername/your-repo.git
```

For more details, see the [official Git documentation](https://git-scm.com/doc).