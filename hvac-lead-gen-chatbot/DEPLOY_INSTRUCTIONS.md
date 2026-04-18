# Netlify Deployment Instructions

## Quick Deploy (3 Steps)

### Option 1: Drag & Drop (Easiest)
1. Go to https://app.netlify.com/drop
2. Drag the entire `abc-aloha-crew/hvac-lead-gen-chatbot` folder
3. Done! Your site is live at: `https://hvac-demo.netlify.app`

### Option 2: GitHub/GitLab Deployment
1. Push to GitHub: `git remote add origin <your-repo-url>`
2. Create repo on Netlify: https://app.netlify.com/import/github
3. Connect your repo
4. Netlify auto-deploys on every push

### Option 3: CLI Deploy
```bash
# Install Netlify CLI (if needed)
npm install -g netlify-cli

# Login
netlify login

# Initialize and deploy
cd abc-aloha-crew/hvac-lead-gen-chatbot
netlify init
netlify deploy --prod
```

## Custom Domain Setup

### Get Free Domain
- **Cloudflare Pages**: Add `.dev` subdomain
- **Freenom**: Get free `.tk` domains
- **GitHub**: Use `yourname.github.io`

### Add Custom Domain
1. Go to Site Settings → Domain management
2. Add your domain: `abcaloha-cleanup.com`
3. Follow Netlify's DNS instructions
4. DNS propagates in 24-48 hours

## Site Info

**Demo URL:** `https://hvac-demo.netlify.app`
**Custom URL:** `https://abcalohacrew.netlify.app`

## Analytics

Add Google Analytics to track leads:
```html
<!-- Add to public/index.html head -->
<script>
  (function(i,s,o,g,r,a,m){
    i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();
    a=s.createElement(o),m=s.getElementsByTagName(o)[0];
    a.async=1;a.src=g;m.parentNode.insertBefore(i,a)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-XXXXX-Y', 'auto');
  ga('send', 'pageview');
});
</script>
```

## Security Notes

- HTTPS is automatic on Netlify ✅
- No API keys in frontend code ✅
- Form data shown in demo mode only
- Ready for production with API keys

## Troubleshooting

If deployment fails:
1. Check all files are committed
2. Verify `public/` folder exists
3. Ensure no syntax errors in HTML/JS
4. Check file permissions

## Next Steps After Deploy

1. **Test all pages:**
   - / (home)
   - /services.html
   - /booking.html
   - Chatbot on mobile

2. **Share with prospects:**
   - Send site URL via Telegram
   - Embed in email signatures
   - Add to proposal documents

3. **Gather feedback:**
   - What works well?
   - What needs improvement?
   - What features do clients want?

## Contact

- **Support:** @Logan808Bot
- **Email:** support@abcalohacrew.com
- **Phone:** (808) 555-0123
