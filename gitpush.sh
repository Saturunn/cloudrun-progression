#!/bin/bash

# Check Login Status
if ! gh auth status &>/dev/null; then
    echo "You are not logged in. Please login first."
    gh auth login
fi

# Prompt commit message
echo "Enter commit message:"
read COMMIT_MSG

# Git push flow
git add .
git commit -m "$COMMIT_MSG"
git push origin main
