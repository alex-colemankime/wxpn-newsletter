#!/bin/bash

set -e  # Exit on any error

echo "Starting deployment process..."

# Navigate to the correct directory
cd /Users/ack2/wxpn-newsletter || { echo "Failed to navigate to directory"; exit 1; }

echo "Current directory: $(pwd)"

# Configure git user
git config user.name "alex-colemankime" || { echo "Failed to set git username"; exit 1; }
git config user.email "alex-colemankime@users.noreply.github.com" || { echo "Failed to set git email"; exit 1; }

# Update remote URL to correct GitHub username
echo "Updating remote URL..."
git remote set-url origin https://github.com/alex-colemankime/wxpn-newsletter.git || { echo "Failed to update remote URL"; exit 1; }

echo "Git user configured and remote URL updated"

# Check status
echo "Git status:"
git status

# Add all changes
echo "Adding changes..."
git add . || { echo "Failed to add changes"; exit 1; }

# Check if there are changes to commit
if git diff --staged --quiet; then
    echo "No changes to commit"
    exit 0
fi

# Commit changes
echo "Committing changes..."
git commit -m "Update hero story to Lauryn Hill Beardfest with improved layout and banner positioning" || { echo "Failed to commit"; exit 1; }

# Push to GitHub
echo "Pushing to GitHub..."
git push origin main || { echo "Failed to push to GitHub"; exit 1; }

echo "✅ Changes pushed successfully!"
echo "🚀 Your site will be updated in 1-2 minutes at: https://alex-colemankime.github.io/wxpn-newsletter/"
