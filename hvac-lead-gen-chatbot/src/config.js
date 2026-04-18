// Configuration
const config = {
  anthropic: {
    apiKey: process.env.ANTHROPIC_API_KEY || '',
    model: process.env.ANTHROPIC_MODEL || 'sonnet-4-6',
    maxTokens: 2048,
    temperature: 0.7
  },
  server: {
    port: parseInt(process.env.SERVER_PORT) || 3000,
    host: process.env.SERVER_HOST || 'localhost'
  },
  telegram: {
    botToken: process.env.TELEGRAM_BOT_TOKEN || ''
  },
  crm: {
    webhookUrl: process.env.CRM_WEBHOOK_URL || '',
    apiKey: process.env.CRM_API_KEY || ''
  }
};

module.exports = config;
