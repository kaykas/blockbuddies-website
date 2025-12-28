#!/bin/bash

# BlockBuddies4Life Website Deployment Script
# This script initializes git, creates a GitHub repo, and deploys to Vercel

set -e  # Exit on any error

echo "=========================================="
echo "BlockBuddies4Life Website Deployment"
echo "=========================================="
echo ""

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "Error: index.html not found. Please run this script from the blockbuddies-website directory."
    exit 1
fi

# Initialize git if not already initialized
if [ ! -d ".git" ]; then
    echo "Step 1: Initializing git repository..."
    git init
    echo "Git repository initialized."
else
    echo "Step 1: Git repository already exists."
fi

# Add all files
echo ""
echo "Step 2: Adding files to git..."
git add .

# Commit
echo ""
echo "Step 3: Creating initial commit..."
git commit -m "Initial commit: BlockBuddies4Life website with Terms and Privacy Policy for TikTok API verification" || echo "Nothing to commit or already committed"

# Create GitHub repository
echo ""
echo "Step 4: Creating GitHub repository..."
gh repo create blockbuddies-website --public --source=. --description "Official website for BlockBuddies4Life gaming content - Terms & Privacy for TikTok API" --push || echo "Repository may already exist"

# Push to GitHub
echo ""
echo "Step 5: Pushing to GitHub..."
git branch -M main
git push -u origin main || echo "Already pushed or push failed"

# Deploy to Vercel
echo ""
echo "Step 6: Deploying to Vercel..."
echo "Please follow the prompts to deploy to Vercel."
echo ""
vercel --prod

echo ""
echo "=========================================="
echo "Deployment Complete!"
echo "=========================================="
echo ""
echo "Next steps:"
echo "1. Note the Vercel deployment URL"
echo "2. Use the following URLs for TikTok API verification:"
echo "   - Homepage: https://your-url.vercel.app"
echo "   - Terms: https://your-url.vercel.app/terms.html"
echo "   - Privacy: https://your-url.vercel.app/privacy.html"
echo ""
