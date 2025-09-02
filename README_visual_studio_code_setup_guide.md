# Visual Studio Code Installation & Settings Sync on Ubuntu

## 1. Install VS Code

- Download the `.deb` package from the [official VS Code download page](https://code.visualstudio.com/Download).
- Open your terminal and navigate to your Downloads folder:
  ```bash
  cd ~/Downloads
  sudo apt install ./code_*.deb
  ```

## 2. Enable Settings Sync

- Open VS Code.
- Click the Accounts icon (bottom-left).
- Select "Turn on Settings Sync...".
- Choose what to sync and click "Sign in & Turn on".
- Log in with your GitHub or Microsoft account in the browser.

Your settings, extensions, and themes will now sync across devices.

## Tips

- When setting up a new machine, repeat the sync process to restore your environment.