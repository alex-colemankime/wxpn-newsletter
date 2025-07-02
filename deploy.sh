#!/bin/bash

# WXPN Newsletter - Quick Deploy Script
# This script will sync your changes to GitHub Pages

echo "🚀 WXPN Newsletter - Quick Deploy"
echo "================================="

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found. Please run this script from the wxpn-newsletter directory."
    exit 1
fi

# Copy the latest version of New Newsletter.html to index.html if it's newer
if [ "New Newsletter.html" -nt "index.html" ]; then
    echo "📄 Updating index.html from New Newsletter.html..."
    cp "New Newsletter.html" "index.html"
fi

# Add all changes
echo "📁 Adding changes to git..."
git add .

# Check if there are any changes to commit
if git diff --staged --quiet; then
    echo "✅ No changes to deploy."
    exit 0
fi

# Get commit message from user or use default
if [ -z "$1" ]; then
    COMMIT_MSG="Update newsletter content - $(date '+%Y-%m-%d %H:%M')"
else
    COMMIT_MSG="$1"
fi

# Commit changes
echo "💾 Committing changes..."
git commit -m "$COMMIT_MSG"

# Push to GitHub
echo "🌐 Pushing to GitHub..."
git push origin main

echo "✅ Deploy complete! Your changes will be live at:"
echo "   https://alex-colemankime.github.io/wxpn-newsletter"
echo "   (may take 1-2 minutes to update)"
