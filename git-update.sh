#!/bin/bash

# ==========================================
# Git Repository Updater Script
# ==========================================

# Use the first argument as the directory, or default to the current directory
TARGET_DIR="${1:-.}"

# Navigate to the target directory
cd "$TARGET_DIR" || { echo "❌ Error: Could not navigate to directory '$TARGET_DIR'."; exit 1; }

# Verify that the directory is a Git repository
if [ ! -d ".git" ]; then
    echo "❌ Error: Directory '$(pwd)' is not a Git repository."
    exit 1
fi

echo "🔄 Starting update for repository in: $(pwd)"

# Fetch the latest metadata from the remote repository
echo "   Fetching latest changes..."
git fetch --all --prune

# Check the current branch name
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
echo "   Current branch: $CURRENT_BRANCH"

# Pull the latest changes for the current branch
echo "   Pulling updates..."
git pull origin "$CURRENT_BRANCH"

# Check if the pull was successful
if [ $? -eq 0 ]; then
    echo "✅ Repository successfully updated."
else
    echo "⚠️ Warning: 'git pull' encountered an issue (e.g., merge conflicts)."
    exit 1
fi
