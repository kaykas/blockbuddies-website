# BlockBuddies4Life Website Deployment Instructions

## Overview
This guide will help you deploy the BlockBuddies4Life website to Vercel and create a GitHub repository.

## Prerequisites
- Git installed
- GitHub CLI (`gh`) installed and authenticated
- Vercel CLI installed (or use Vercel web interface)
- Node.js installed (for Vercel CLI)

## Quick Start - Automated Deployment

If you have all prerequisites, simply run:

```bash
cd /Users/jkw/yt-automation/blockbuddies-website
chmod +x deploy.sh
./deploy.sh
```

The script will:
1. Initialize git repository
2. Commit all files
3. Create GitHub repository
4. Push to GitHub
5. Deploy to Vercel

## Manual Deployment Steps

If you prefer to deploy manually or the script fails:

### Step 1: Initialize Git Repository

```bash
cd /Users/jkw/yt-automation/blockbuddies-website
git init
git add .
git commit -m "Initial commit: BlockBuddies4Life website with Terms and Privacy Policy for TikTok API verification"
```

### Step 2: Create GitHub Repository

Option A - Using GitHub CLI:
```bash
gh repo create blockbuddies-website --public --source=. --description "Official website for BlockBuddies4Life gaming content" --push
```

Option B - Using GitHub Web Interface:
1. Go to https://github.com/new
2. Repository name: `blockbuddies-website`
3. Description: "Official website for BlockBuddies4Life gaming content"
4. Make it Public
5. Do NOT initialize with README (we already have files)
6. Click "Create repository"
7. Follow the instructions to push existing repository:
   ```bash
   git remote add origin https://github.com/YOUR-USERNAME/blockbuddies-website.git
   git branch -M main
   git push -u origin main
   ```

### Step 3: Deploy to Vercel

Option A - Using Vercel CLI (Recommended):

1. Install Vercel CLI if not already installed:
   ```bash
   npm install -g vercel
   ```

2. Login to Vercel:
   ```bash
   vercel login
   ```

3. Deploy to production:
   ```bash
   cd /Users/jkw/yt-automation/blockbuddies-website
   vercel --prod
   ```

4. Follow the prompts:
   - Set up and deploy? Yes
   - Which scope? (Select your account)
   - Link to existing project? No
   - What's your project's name? blockbuddies-website
   - In which directory is your code located? ./
   - Want to override the settings? No

Option B - Using Vercel Web Interface:

1. Go to https://vercel.com/new
2. Import your GitHub repository
3. Select `blockbuddies-website`
4. Configure project:
   - Framework Preset: Other
   - Root Directory: ./
   - Build Command: (leave empty)
   - Output Directory: (leave empty)
5. Click "Deploy"

## Verification

After deployment, you should have:

1. **GitHub Repository**: https://github.com/YOUR-USERNAME/blockbuddies-website
2. **Vercel Deployment**: https://blockbuddies-website.vercel.app (or custom URL)

### Test Your Deployment

Visit these URLs to verify everything works:
- Homepage: https://YOUR-URL.vercel.app/
- About: https://YOUR-URL.vercel.app/about.html
- Terms: https://YOUR-URL.vercel.app/terms.html
- Privacy: https://YOUR-URL.vercel.app/privacy.html

All pages should:
- Load properly
- Display correctly on mobile and desktop
- Show the Minecraft/gaming theme (green colors)
- Have working navigation

## For TikTok API Verification

When applying for TikTok API access, provide these URLs:

- **Website URL**: https://YOUR-URL.vercel.app
- **Terms of Service**: https://YOUR-URL.vercel.app/terms.html
- **Privacy Policy**: https://YOUR-URL.vercel.app/privacy.html

## Custom Domain (Optional)

To use a custom domain like `blockbuddies4life.com`:

1. Purchase domain from registrar (Namecheap, GoDaddy, etc.)
2. In Vercel dashboard:
   - Go to your project
   - Click "Settings" > "Domains"
   - Add your custom domain
   - Follow DNS configuration instructions
3. Update TikTok API application with new domain

## Troubleshooting

### Issue: GitHub CLI not authenticated
```bash
gh auth login
```

### Issue: Vercel CLI not installed
```bash
npm install -g vercel
```

### Issue: Git not initialized
Make sure you're in the correct directory:
```bash
cd /Users/jkw/yt-automation/blockbuddies-website
ls -la  # Should see index.html, styles.css, etc.
```

### Issue: Pages show 404 on Vercel
- Make sure all HTML files are in the root directory
- Check vercel.json configuration
- Try redeploying: `vercel --prod --force`

### Issue: Styles not loading
- Verify styles.css is in the same directory as HTML files
- Check browser console for errors
- Clear browser cache and refresh

## Updating the Website

To make changes after initial deployment:

```bash
cd /Users/jkw/yt-automation/blockbuddies-website

# Make your changes to HTML/CSS files

# Commit and push changes
git add .
git commit -m "Description of your changes"
git push

# Redeploy to Vercel (if not auto-deployed)
vercel --prod
```

Vercel typically auto-deploys when you push to GitHub if you connected the repo.

## Support

If you encounter issues:
- Vercel Documentation: https://vercel.com/docs
- GitHub CLI Documentation: https://cli.github.com/manual/
- Contact: Check GitHub issues or Vercel support

## Success Checklist

- [ ] Git repository initialized
- [ ] Files committed
- [ ] GitHub repository created
- [ ] Code pushed to GitHub
- [ ] Vercel project created
- [ ] Site deployed to Vercel
- [ ] All pages accessible and working
- [ ] URLs noted for TikTok API application
- [ ] (Optional) Custom domain configured

## Next Steps

After successful deployment:

1. **Save your URLs** - Write down or bookmark your Vercel URL
2. **Test thoroughly** - Visit all pages on desktop and mobile
3. **Apply for TikTok API** - Use your URLs in the application
4. **Update as needed** - You can always modify and redeploy

Good luck with your TikTok API verification!
