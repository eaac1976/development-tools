# Visual Studio Code Installation & Settings Sync on Ubuntu

## 1. Install VS Code

You have two options to install Visual Studio Code:

### Option 1: Download the `.deb` Package

- Download the `.deb` package from the [official VS Code download page](https://code.visualstudio.com/Download).
- Open your terminal and navigate to your Downloads folder:
  ```bash
  cd ~/Downloads
  sudo apt install ./code_*.deb
  ```

### Option 2: Install Directly from the Official Repository (Recommended)

- Run the provided installation script:
  ```bash
  chmod +x scripts/install_VSCode.sh
  ./scripts/install_VSCode.sh
  ```
- This script will automatically add the Microsoft repository based on your CPU architecture and install VS Code using `apt`.

---

## 2. Enable Settings Sync

- Open VS Code.
- Click the Accounts icon (bottom-left).
- Select "Turn on Settings Sync...".
- Choose what to sync and click "Sign in & Turn on".
- Log in with your GitHub or Microsoft account in the browser.

Your settings, extensions, and themes will now sync across devices.

## Tips

- When setting up a new machine, repeat the sync process to restore your environment.