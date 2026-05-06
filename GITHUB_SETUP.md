# 🚀 Quick GitHub Setup Guide for ABC Aloha Crew Website

This guide will walk you through setting up your website on GitHub and deploying it live in under 10 minutes!

## ⚡ Quick Start (TL;DR)

```bash
# 1. Navigate to your project folder
cd path/to/abc-aloha-crew

# 2. Initialize git and commit
git init
git add .
git commit -m "Initial commit: ABC Aloha Crew website"

# 3. Create repo on GitHub (see below), then:
git remote add origin https://github.com/YOUR-USERNAME/abc-aloha-crew.git
git branch -M main
git push -u origin main

# 4. Enable GitHub Pages in repository Settings
# 5. Live at: https://YOUR-USERNAME.github.io/abc-aloha-crew/
```

---

## 📋 Step-by-Step Instructions

### 1️⃣ Prerequisites

- GitHub account (free at [github.com](https://github.com))
- Git installed on your computer
- Your ABC Aloha Crew website files

### 2️⃣ Check Git Installation

Open Terminal/Command Prompt and run:

```bash
git --version
```

**If Git is not installed:**
- **Windows**: Download from [git-scm.com](https://git-scm.com)
- **Mac**: Install via `brew install git` or download from git-scm.com
- **Linux**: Run `sudo apt-get install git` (Ubuntu/Debian)

### 3️⃣ Configure Git (First Time Only)

```bash
git config --global user.name "Your Full Name"
git config --global user.email "your-email@example.com"
```

### 4️⃣ Initialize Your Local Repository

Navigate to your project folder and run:

```bash
cd path/to/abc-aloha-crew
git init
```

This creates a `.git` folder (hidden by default).

### 5️⃣ Add Your Files to Git

```bash
# Add all files
git add .

# Commit with a message
git commit -m "Initial commit: ABC Aloha Crew website launch"
```

### 6️⃣ Create Repository on GitHub

1. Go to [github.com](https://github.com) and log in
2. Click the **+** icon in the top right
3. Select **New repository**
4. Fill in the details:
   - **Repository name**: `abc-aloha-crew`
   - **Description**: "Premium AI business website for ABC Aloha Crew"
   - **Visibility**: **Public** (required for GitHub Pages)
   - **Do NOT** check "Initialize this repository with..."
5. Click **Create repository**

### 7️⃣ Connect Your Local Repository to GitHub

On the next page, you'll see setup instructions. Copy your repository URL and run:

```bash
git remote add origin https://github.com/YOUR-USERNAME/abc-aloha-crew.git
git branch -M main
git push -u origin main
```

Replace `YOUR-USERNAME` with your actual GitHub username.

### 8️⃣ Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** (top right)
3. In the left sidebar, click **Pages**
4. Under "Build and deployment":
   - **Source**: Select "Deploy from a branch"
   - **Branch**: Select `main`
   - **Folder**: Select `/ (root)`
5. Click **Save**

**Your site is now live! 🎉**

Access it at: `https://YOUR-USERNAME.github.io/abc-aloha-crew/`

---

## 🔄 Common Git Commands

### View Status
```bash
git status
```

### View Commit History
```bash
git log
```

### Make Changes and Update

```bash
# Edit files in your editor

# Stage changes
git add .

# Commit changes
git commit -m "Describe what you changed"

# Push to GitHub
git push origin main
```

### Create a Feature Branch
```bash
# Create and switch to new branch
git checkout -b feature/new-feature-name

# Make your changes...

# Commit
git add .
git commit -m "Add new feature"

# Push to GitHub
git push origin feature/new-feature-name

# Create Pull Request on GitHub website
# Review and merge when ready
```

### Undo Recent Commit
```bash
# Keep changes locally
git reset --soft HEAD~1

# Or discard changes
git reset --hard HEAD~1
```

---

## 🌐 Testing Your Live Site

Once GitHub Pages is enabled, test your site:

1. Visit: `https://YOUR-USERNAME.github.io/abc-aloha-crew/`
2. Check on mobile devices
3. Test all links and buttons
4. Verify responsive design

**Note:** It may take 1-2 minutes for your first deploy. Subsequent changes are usually live within seconds.

---

## 🔧 Troubleshooting

### "Permission denied (publickey)"

Your SSH keys might not be set up. Use HTTPS instead:

```bash
# Remove old remote
git remote remove origin

# Add HTTPS remote
git remote add origin https://github.com/YOUR-USERNAME/abc-aloha-crew.git

# Try push again
git push -u origin main
```

### Changes Not Showing on GitHub Pages

1. Verify files are in root directory (not in a folder)
2. Check that `index.html` is in the root
3. Wait 1-2 minutes for deployment
4. Hard refresh your browser (Ctrl+Shift+R or Cmd+Shift+R)
5. Check deployment status in repository Settings > Pages

### Port Already in Use (Local Testing)

If you get "Address already in use" error:

```bash
# Use different port
python -m http.server 8001
```

Then visit: `http://localhost:8001`

---

## 📝 Commit Message Best Practices

Write clear, descriptive commit messages:

```bash
# Good ✓
git commit -m "Update pricing section and add new testimonials"

# Better ✓
git commit -m "Feat: Add three new customer testimonials
- Sarah Chen from TechFlow
- Marcus Williams from DataSync
- Elena Rodriguez from CloudVenture"

# Avoid ✗
git commit -m "update stuff"
```

---

## 🚀 Advanced: Custom Domain

To use a custom domain (e.g., `abcaloha.crew`):

1. In repository **Settings** > **Pages**
2. Under "Custom domain", enter your domain
3. Update DNS records with your domain provider
4. GitHub will verify and generate an SSL certificate

See [GitHub's custom domain guide](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site) for details.

---

## 📚 Additional Resources

- [GitHub Docs - Getting Started](https://docs.github.com/en/get-started)
- [Git Cheat Sheet](https://github.github.com/training-kit/)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Pro Git Book](https://git-scm.com/book/en/v2) (Free)

---

## ✅ Checklist

- [ ] Git installed and configured
- [ ] Website files ready
- [ ] Repository created on GitHub
- [ ] Files pushed to GitHub
- [ ] GitHub Pages enabled
- [ ] Site live and tested
- [ ] Custom domain configured (optional)

---

## 🎉 You're Done!

Your ABC Aloha Crew website is now live on GitHub Pages! 

Share your site: `https://YOUR-USERNAME.github.io/abc-aloha-crew/`

Next steps:
- Share with team members
- Gather feedback
- Make improvements
- Deploy custom domain
- Monitor analytics

**Mahalo for building with ABC Aloha Crew!** 🌺