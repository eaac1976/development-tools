# Visual Studio Code Installation and Configuration on Ubuntu

This guide provides instructions on how to install Visual Studio Code (VS Code) on Ubuntu and how to log in to sync your settings, extensions, and themes across multiple machines.

# Part 1: Installing Visual Studio Code

The recommended way to install VS Code is by using the official Debian package (.deb) provided by Microsoft. This method also adds the official Microsoft repository to your system, so you will receive updates automatically through the standard "Software Update" utility.

1. Download the VS Code Package

Open this link in your browser:
Official VS Code Download Page

Download the Debian package:
On that page, click the button for .deb (Debian, Ubuntu).

2. Install the Package
Open your terminal and navigate to your Downloads directory (or wherever you saved the file).

## Navigate to your Downloads folder
cd ~/Downloads


Now, use the apt install command to install the package. This command is preferred over dpkg because it automatically handles any required dependencies. Replace the filename if it's different.

## Use the actual filename you downloaded
sudo apt install ./code_*.deb


Enter your password when prompted. Once the installation is complete, you can launch VS Code from your applications menu.

# Part 2: Logging in with Settings Sync

VS Code does not require a login to be used, but logging in is highly recommended to sync your personal configuration. The "Settings Sync" feature allows you to use your GitHub or Microsoft account to save your settings, keyboard shortcuts, extensions, and UI layout to the cloud.

This is extremely useful when setting up a new machine, as it can restore your entire coding environment in minutes.

1. Open VS Code
Launch the Visual Studio Code application.

2. Access Settings Sync

In the bottom-left corner of the window, click on the Accounts icon (it looks like a person's silhouette).

A menu will appear. Select "Turn on Settings Sync...".

3. Choose What to Sync

A dialog box will appear allowing you to select which preferences you'd like to sync. By default, everything is selected, which is generally what you want.

Click the "Sign in & Turn on" button.

4. Sign in via Browser

You will be prompted to sign in with either a Microsoft or GitHub account. For most developers, using a GitHub account is the most convenient option.

A browser window will open automatically.

Log in to your GitHub (or Microsoft) account and click Authorize to grant VS Code access.

✅ All Set!

Your VS Code environment is now synchronized. Any changes you make to your settings or any extensions you install/uninstall will be automatically saved to your account. When you install VS Code on a new computer, you can simply repeat the "Settings Sync" login process, and your entire configuration will be downloaded and applied.