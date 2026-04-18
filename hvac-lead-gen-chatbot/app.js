// HVAC Lead Gen Chatbot - Express Server
const express = require('express');
const cors = require('cors');
const Anthropic = require('@anthropic-ai/sdk');
const config = require('./src/config');

const app = express();
const anthropic = new Anthropic.default({
  apiKey: config.anthropic.apiKey,
  dangerouslyAllowBrowser: true
});

app.use(cors());
app.use(express.json());
app.use(express.static('public'));

// Chat endpoint - HVAC Knowledge Base
app.post('/api/chat', async (req, res) => {
  const { messages } = req.body;
  
  try {
    // Create system prompt for HVAC expertise
    const systemPrompt = `
You are HVAC-Expert, an AI assistant specialized in helping HVAC businesses.
Your expertise covers:
- Air conditioning repair and maintenance
- Heating system troubleshooting
- Ventilation and air quality
- HVAC installation and upgrades
- Emergency service responses
- Seasonal maintenance tips

Response guidelines:
1. Be friendly, professional, and helpful
2. Include service pricing when relevant
3. Provide emergency numbers for urgent issues
4. Encourage booking appointments
5. Share maintenance tips
6. Ask for customer location for service area matching

Example responses:
- "Welcome to ABC Aloha Crew HVAC! How can I help you today?"
- "For AC repair in Hawaii, our team is available 24/7. Call us at (808) 555-0123"
- "I'd recommend our $99 preventative maintenance package to avoid expensive repairs"
    `;

    const response = await anthropic.messages.create({
      model: config.anthropic.model,
      maxTokens: config.anthropic.maxTokens,
      temperature: config.anthropic.temperature,
      system: systemPrompt,
      messages: [
        { role: 'system', content: systemPrompt },
        ...messages.slice(-3) // Send last 3 messages for context
      ]
    });

    res.json({ output: response.content[0].text });
  } catch (error) {
    console.error('Chat error:', error);
    res.status(500).json({ error: 'AI service unavailable' });
  }
});

// Lead capture endpoint
app.post('/api/leads', async (req, res) => {
  const { name, email, phone, service, message } = req.body;
  
  const lead = {
    id: Date.now(),
    name,
    email,
    phone,
    service,
    message,
    capturedAt: new Date().toISOString(),
    status: 'new',
    priority: service === 'emergency' ? 1 : 2
  };

  console.log('New lead captured:', lead);
  
  // TODO: Add to database here
  // TODO: Send email notification
  // TODO: Send to CRM webhook

  res.json({ success: true, lead });
});

// Service catalog
app.get('/api/services', (req, res) => {
  res.json([
    { id: 'ac_repair', name: 'AC Repair', price: '$199', description: 'Complete air conditioning diagnosis and repair' },
    { id: 'heating', name: 'Heating Repair', price: '$199', description: 'Furnace and heat pump repair services' },
    { id: 'maintenance', name: 'Preventative Maintenance', price: '$99', description: 'Seasonal tune-up and inspection' },
    { id: 'installation', name: 'HVAC Installation', price: 'Custom Quote', description: 'New system installation' },
    { id: 'emergency', name: 'Emergency Service', price: '$249', description: '24/7 emergency response' },
    { id: 'air_quality', name: 'Air Quality Solutions', price: '$149', description: 'Filter replacement, duct cleaning' }
  ]);
});

// Booking endpoint
app.get('/api/booking/:service', (req, res) => {
  const { service } = req.params;
  res.json({
    available: true,
    calendar: 'https://calendly.com/your-hvac-business',
    phone: '(808) 555-0123'
  });
});

// Start server
const PORT = config.server.port;
app.listen(PORT, config.server.host, () => {
  console.log(`HVAC Chatbot running on http://${config.server.host}:${PORT}`);
  console.log(`AI model: ${config.anthropic.model}`);
  console.log(`API endpoint: /api/chat`);
  console.log(`Services endpoint: /api/services`);
});

module.exports = app;
