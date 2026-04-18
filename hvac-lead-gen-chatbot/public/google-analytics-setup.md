# Google Analytics Setup for HVAC Lead Gen Chatbot

## Quick Start (No Coding Required)

### Option 1: Google Tag Manager (Recommended)
1. Go to https://tagmanager.google.com
2. Create free account
3. Add tracking code to index.html head
4. Add goal: Form submissions
5. Add event: Chat messages

### Option 2: Simple Analytics (No Setup)
```html
<!-- Add this to index.html head -->
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();
a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(i,a)
})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
ga('create', 'UA-00000000-1', 'auto');
ga('send', 'pageview');
</script>
```

### Option 3: Simple Count (Track Visitors)
Just needs the basic tracking script.

## What We'll Track

- **Page views:** How many people visit your site
- **Form submissions:** Every lead captured
- **Service interest:** Which services they click
- **Chatbot usage:** How many conversations
- **Bounce rate:** Who leaves without action

## Where to Get Tracking ID

1. Go to Google Analytics (analytics.google.com)
2. Create free account
3. Get your Measurement ID: `G-XXXXXXXXXX`
4. Replace `UA-00000000-1` with your ID

## Custom Goals to Set Up

After getting tracking ID, set these goals:

1. **Form Submit:** When someone requests service
2. **Chatbot Message:** Every chat interaction  
3. **Service Click:** Which service they're interested in
4. **Booking Request:** When someone schedules

## Privacy Note

- Google Analytics is **free**
- Doesn't collect personal info
- Complies with most privacy laws
- You control the data

## Alternative: Simple Counter

If you want something simpler:
- Use Fathom Analytics (privacy-focused)
- Or just track manually via form submissions
- Or use Telegram to collect leads directly

**Ready to add tracking?** Just tell me your tracking ID or I can use a placeholder until you set it up!

NO_REPLY
