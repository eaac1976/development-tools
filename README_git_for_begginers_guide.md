# Git & GitHub: The Absolute Beginner's Guide

Welcome! This guide is for anyone who's heard of "Git" but finds it intimidating. We'll cover the basics in two ways:  
- **Using the command line** (the traditional way)  
- **Using Visual Studio Code's friendly interface**

---

## What is Git?

Imagine you're writing an important document and saving versions like `report_v1.doc`, `report_v2.doc`, `report_final.doc`, `report_final_for_real_this_time.doc`. It's messy!

**Git** is a Version Control System that tracks every change you make to your project files. You can look at older versions, see exactly what changed, and even go back in time if you make a mistake.

**GitHub** is a website that hosts your Git projects online, allowing you to back them up and collaborate with others.

---

# Part 1: Using Git via the Console (Command Line)

This is the classic way to use Git. It's powerful and worth learning the basics.

## Step 0: First-Time Setup

You only need to do this once on your computer.  
Open your terminal and run these commands (replace with your info):

```bash
git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"
```

---

## The Basic Workflow

Think of using Git as taking snapshots of your work.

### 1. Start a Project

- **Create a new project:**  
  ```bash
  git init
  ```
  *(Run this inside your project folder)*

- **Copy an existing project from GitHub:**  
  ```bash
  git clone <URL_from_GitHub>
  ```

---

### 2. Do Your Work

Create, edit, and delete files as you normally would.

---

### 3. Check Your Changes

Ask Git what's different since your last snapshot:

```bash
git status
```

Git will show you which files are new or modified.

---

### 4. Stage Your Changes

Tell Git which files you want to save in this version.

- **Add a specific file:**  
  ```bash
  git add file1.txt
  ```
- **Add all changed files:**  
  ```bash
  git add .
  ```

---

### 5. Commit Your Changes

Save the "staged" files with a descriptive message:

```bash
git commit -m "Add a descriptive message here, e.g., 'Create initial project layout'"
```

This snapshot is now saved locally on your computer.

---

### 6. Share Your Work (Push)

Send your saved snapshots (commits) to GitHub:

```bash
git push
```

---

### 7. Get Updates from Others (Pull)

Get the latest changes from GitHub:

```bash
git pull
```

---

# Part 2: Using Git in Visual Studio Code (Easier!)

VS Code has built-in Git support that makes the process visual and much simpler.

## The Basic Workflow in VS Code

1. **Open your project folder in VS Code.**

2. **Initialize a Repository:**
   - Go to the "Source Control" tab (left sidebar, branching icon).
   - If your project isn't a Git repository, click "Initialize Repository".

3. **Make Changes:**
   - Create or edit files.
   - See changed files under the "Changes" section in Source Control.

4. **Stage Your Changes:**
   - Hover over a file and click the `+` icon to stage it (same as `git add`).
   - Staged files move to the "Staged Changes" section.

5. **Commit Your Changes:**
   - Type your commit message in the box at the top of Source Control.
   - Click the checkmark (✔) to commit (same as `git commit`).

6. **Push and Pull:**
   - Click the "Synchronize Changes" button (🔄) at the bottom-left to pull new changes and push your own.
   - Or use the `...` menu in Source Control for separate "Push" and "Pull" options.

---

## 🎉 That's it!

For beginners, the VS Code interface is a fantastic way to learn the Git workflow without memorizing commands.  
As you get comfortable, you can mix and match both methods!

---