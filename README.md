# Git Repository Updater 🔄

A handy Bash script designed to streamline the process of updating local Git repositories. It safely navigates to a specified directory, fetches the latest remote metadata, prunes stale references, and securely pulls updates for your currently active branch.

## 📑 Table of Contents
- [Features](#-features)
- [Installation](#%EF%B8%8F-installation)
- [Usage](#-usage)
- [Technologies](#-technologies)
- [Contributing](#-contributing)
- [License](#-license)

## 🚀 Features
- **Flexible Targeting**: Run the script in your current directory or pass a specific path as an argument.
- **Safety Checks**: Automatically verifies that the target directory is a valid Git repository before attempting any updates.
- **Automated Cleanup**: Uses `git fetch --all --prune` to remove local references to deleted remote branches.
- **Branch-Aware**: Detects your current active branch and pulls updates specifically from its origin, minimizing merge risks.
- **Clear Feedback**: Provides clear console messages for navigation errors, non-git directories, and pull success/failure states.

## 🛠️ Installation

1. Clone this repository or download the `git-update.sh` script directly.
2. Make the script executable by running the following command in your terminal:
   ```bash
   chmod +x git-update.sh
   ```
3. *(Optional)* Move the script to a directory in your `PATH` (like `/usr/local/bin`) to run it globally from anywhere:
   ```bash
   sudo mv git-update.sh /usr/local/bin/git-update
   ```

## 💻 Usage

The script can be executed in two ways:

**1. Update the current directory:**
Navigate to your Git repository and run the script without arguments.
```bash
./git-update.sh
```

**2. Update a specific directory:**
Pass the path to the target Git repository as the first argument.
```bash
./git-update.sh /path/to/your/repository
```

**Expected Output:**
```text
🔄 Starting update for repository in: /path/to/your/repository
   Fetching latest changes...
   Current branch: main
   Pulling updates...
✅ Repository successfully updated.
```

## ⚙️ Technologies Used
- **Bash**: Shell scripting language.
- **Git**: Version control system.

## 🤝 Contributing
Contributions, issues, and feature requests are welcome! 
Feel free to check the [issues page](#) if you want to contribute.

## 📜 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
