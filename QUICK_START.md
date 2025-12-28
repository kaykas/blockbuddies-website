# Quick Start - Deploy in 5 Minutes

## The Fastest Way to Deploy

```bash
# 1. Navigate to the website directory
cd /Users/jkw/yt-automation/blockbuddies-website

# 2. Make deploy script executable
chmod +x deploy.sh

# 3. Run the deployment script
./deploy.sh
```

That's it! The script will handle everything automatically.

## Manual 3-Step Deployment

If you prefer manual control:

### Step 1: Git & GitHub (2 minutes)
```bash
cd /Users/jkw/yt-automation/blockbuddies-website
git init
git add .
git commit -m "Initial commit: BlockBuddies4Life website"
gh repo create blockbuddies-website --public --source=. --push
```

### Step 2: Deploy to Vercel (2 minutes)
```bash
vercel --prod
```

Follow the prompts (accept defaults).

### Step 3: Get Your URLs (1 minute)
After deployment, Vercel will show you:
```
✅  Production: https://blockbuddies-website.vercel.app
```

## For TikTok API Application

Use these exact URLs:

| Field | URL |
|-------|-----|
| Website URL | `https://blockbuddies-website.vercel.app` |
| Terms of Service | `https://blockbuddies-website.vercel.app/terms.html` |
| Privacy Policy | `https://blockbuddies-website.vercel.app/privacy.html` |

Replace `blockbuddies-website.vercel.app` with your actual Vercel URL.

## Verification Checklist

After deployment, verify these work:

- [ ] Homepage loads: `https://YOUR-URL.vercel.app/`
- [ ] About page loads: `https://YOUR-URL.vercel.app/about.html`
- [ ] Terms page loads: `https://YOUR-URL.vercel.app/terms.html`
- [ ] Privacy page loads: `https://YOUR-URL.vercel.app/privacy.html`
- [ ] All navigation links work
- [ ] Mobile display looks good
- [ ] YouTube/TikTok links work

## Prerequisites Check

Before deploying, make sure you have:

```bash
# Check Git
git --version

# Check GitHub CLI
gh --version

# Check Node.js (for Vercel)
node --version

# Check Vercel CLI (install if needed)
vercel --version || npm install -g vercel
```

## Troubleshooting One-Liners

```bash
# Not authenticated with GitHub?
gh auth login

# Not authenticated with Vercel?
vercel login

# Want to redeploy?
vercel --prod --force

# Check deployment status
vercel ls
```

## What You Get

- ✅ Professional gaming-themed website
- ✅ Comprehensive Terms of Service
- ✅ COPPA-compliant Privacy Policy
- ✅ Mobile responsive design
- ✅ HTTPS/SSL security
- ✅ Fast CDN hosting
- ✅ GitHub backup
- ✅ Ready for TikTok API verification

## Need Help?

1. **Read**: `DEPLOYMENT_INSTRUCTIONS.md` (detailed guide)
2. **Review**: `SITE_SUMMARY.md` (complete overview)
3. **Check**: Vercel dashboard at https://vercel.com

## Next Steps After Deployment

1. **Save your URL**: Write it down or bookmark it
2. **Test thoroughly**: Visit all 4 pages on mobile and desktop
3. **Apply for TikTok API**: Use your URLs in the application
4. **Wait for approval**: Usually 1-2 weeks
5. **Celebrate**: You're done!

---

**Time Required**: 5 minutes
**Difficulty**: Easy
**Cost**: Free (Vercel free tier)
**Result**: Production-ready website
