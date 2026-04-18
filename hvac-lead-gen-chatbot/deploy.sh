#!/bin/bash

# HVAC Lead Gen Chatbot Deployment Script
# This will create a simple hosting setup

echo "🚀 Deploying HVAC Lead Gen Chatbot Demo..."

# Create simple hosting config
cat > hosting_config.txt << 'EOF'
# Deployment Configuration
# Platform: GitHub Pages / Netlify / Vercel
# 
# For GitHub Pages:
# 1. Create new repo: gh repo create abcaloha/hvac-demo
# 2. Push this project to the repo
# 3. Enable GitHub Pages in Settings
# 4. Your site will be at: https://github.com/abcaloha/hvac-demo

# For Netlify:
# 1. Drag and drop entire folder to netlify.com
# 2. Or connect GitHub repo
# 3. Site will be at: https://hvac-demo.netlify.app

# For Vercel:
# 1. npm install -g vercel
# 2. vercel --prod
# 3. Or vercel link
# Site at: https://hvac-demo.vercel.app

# For simple file hosting (GitHub Releases):
# Upload index.html as attachment to any issue
# Users can download and open locally

# Current hosting option: Direct file sharing
# Send index.html via Telegram to Eric
# Opens in Telegram's built-in browser
EOF

cat >> hosting_config.txt << 'EOF'

# Test URLs for different platforms:
# GitHub Pages:    github.com/USERNAME/hvac-demo
# Netlify:         netlify.app/hvac-demo
# Vercel:          vercel.app/hvac-demo
# Cloudflare Pages: cloudflare.com/pages/hvac-demo

# Simple demo URL (for sharing):
# Use ngrok or localtunnel for local testing:
# ngrok http 3000
# OR
# localtunnel.me
# Example: http://abc-aloha-c.on.vercel.app

# Production deployment checklist:
# [x] Build static files
# [ ] Set up custom domain (optional)
# [ ] Enable HTTPS
# [ ] Configure environment variables
# [ ] Set up analytics (optional)
# [ ] Enable bot API integration
EOF

echo "" >> hosting_config.txt
echo "Deployment config created at hosting_config.txt"

# Create deployment guide
cat > DEPLOYMENT_GUIDE.md << 'EOF'
# HVAC Lead Gen Chatbot - Deployment Guide

## Quick Start Options

### Option 1: Simplest (Local File Sharing)
1. Open `public/index.html` in any browser
2. Share the file via Telegram
3. Recipient can open directly or upload to any hosting

### Option 2: GitHub Pages (Free Hosting)
```bash
# 1. Create GitHub repo
git init
git add .
git commit -m "Initial commit"
# Create repo on GitHub, then link here
git remote add origin <your-github-repo-url>
git push -u origin main

# 2. Enable GitHub Pages
# Go to repo Settings → Pages → Select source: main branch

# Site will be at: https://your-username.github.io/hvac-lead-gen
```

### Option 3: Netlify Drop (Easiest Free Hosting)
```bash
# 1. Go to https://netlify.com
# 2. Drag entire abc-aloha-crew/hvac-lead-gen-chatbot folder
# 3. Site goes live instantly!
# 
# Site at: https://hvac-demo.netlify.app
```

### Option 4: Vercel (Most Features)
```bash
# Install Vercel CLI
npm install -g vercel

# Deploy
cd abc-aloha-crew/hvac-lead-gen-chatbot
vercel --prod

# Or use Vercel web interface:
# https://vercel.com/new
```

## Custom Domain Setup

### Get a free domain:
- Freenom: freenom.com (free .tk domains)
- Cloudflare: cloudflare.com (free .dev subdomains)
- GitHub: username.github.io

### Add to platform:
- GitHub Pages: Settings → Pages → Custom domain
- Netlify: Site settings → Domain management → Add custom domain
- Vercel: Project settings → Domains → Add domain

## Security Checklist

- [ ] Enable HTTPS (all platforms do this automatically)
- [ ] Set up GitHub repo privacy (private vs public)
- [ ] Remove sensitive data from public repos
- [ ] Use environment variables for API keys
- [ ] Set up rate limiting for API endpoints

## Analytics (Optional)

### Google Analytics
```html
<!-- Add to index.html head -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

### Microsoft Clarity (Free heatmaps)
```html
<!-- Add to index.html head -->
<script type="text/browserslist" id="clarity-herokussl">
  (function(){var c=function(e,t){document.body.appendChild(c=d.createElement("script"),c.t=Date.now(),c.src=e,window.clarity=o,window.clarityReady=t,"addEventListener"in document&&document.addEventListener("DOMContentLoaded",function(){if(!window.clarity&&window.clarity.t>=Date.now())c.onload=clarityReady});})();var d,e="https://static.clarity.ms/g/be.js",o;o={queue:[],config:[],ready:function(e,t,i,s){var r=Date.now();return o.queue.push({e:t,i:s,c:function(){o.ready.apply(o,arguments)}},c.t>=Date.now()&&!c.src&&(c.src=e,c.onload=function(){clearTimeout(n),c.onerror=c.onload=null,o.config.unshift({e:t,i:s,c:function(){}})}),n=setTimeout(function(){clearTimeout(n),c.onerror=c.onload=null,o.config.unshift({e:t,i:s,c:function(){}})},Math.max(1e4,Math.min(6e4,(o.readyTimer=o.readyTimer||0)+500))),n},config:function(e){return o.config=e,o}}),c.onload=function(){clearTimeout(n),c.onerror=c.onload=null,o.ready.apply(o,arguments)}),c.onerror=function(){var t=e.indexOf(".be");if(t<0)return,((e=e.substr(t,7))=="g.be.js")&&((d=d||document).body.appendChild(c.src="https://static.clarity.ms/g/bs.js"))},window.clarity=o)}),setTimeout(function(){window.clarityReady=window.clarityReady||!0,setTimeout(function(){if(!window.clarity)clarityReady=null},2e5)},0)});
</script>
```

## Monitoring

### Uptime monitoring (free):
- UptimeRobot: uptimerobot.com
- Pingdom: pingdom.com
- BetterStack: betterstack.com

### Add to dashboard:
- Create monitoring account
- Add your domain
- Set alerts for downtime

## Next Steps After Deployment

1. **Test the site:**
   - Open in multiple browsers
   - Test on mobile devices
   - Verify all links work
   - Check chatbot functionality

2. **Gather feedback:**
   - Share with potential clients
   - Collect testimonials
   - Note improvements

3. **Collect leads:**
   - Monitor form submissions
   - Track chatbot conversations
   - Review analytics

4. **Scale up:**
   - Add more services
   - Integrate CRM
   - Connect email marketing
   - Add testimonials

## Support

If you need help:
- Telegram: @Logan808Bot
- Email: support@abcalohacrew.com
- Documentation: Read DEPLOYMENT_GUIDE.md
