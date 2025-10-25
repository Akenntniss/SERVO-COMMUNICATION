const express = require('express');
const cors = require('cors');
const helmet = require('helmet');
const rateLimit = require('express-rate-limit');
require('dotenv').config();

const phonesRouter = require('./routes/phones');
const simsRouter = require('./routes/sims');
const messagesRouter = require('./routes/messages');

const app = express();

// Middleware de sécurité
app.use(helmet());
app.use(cors());
app.use(express.json());

// Configuration du rate limiting
const limiter = rateLimit({
  windowMs: process.env.RATE_LIMIT_WINDOW_MS || 60000,
  max: process.env.RATE_LIMIT_MAX_REQUESTS || 100
});
app.use(limiter);

// Routes
app.use('/api/phones', phonesRouter);
app.use('/api/sims', simsRouter);
app.use('/api/messages', messagesRouter);

// Route de test
app.get('/api/health', (req, res) => {
  res.json({ status: 'OK', message: 'API en ligne' });
});

// Gestion des erreurs
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({
    status: 'error',
    message: 'Une erreur est survenue'
  });
});

const PORT = process.env.PORT || 3001;
app.listen(PORT, () => {
  console.log(`Serveur démarré sur le port ${PORT}`);
}); 
const cors = require('cors');
const helmet = require('helmet');
const rateLimit = require('express-rate-limit');
require('dotenv').config();

const phonesRouter = require('./routes/phones');
const simsRouter = require('./routes/sims');
const messagesRouter = require('./routes/messages');

const app = express();

// Middleware de sécurité
app.use(helmet());
app.use(cors());
app.use(express.json());

// Configuration du rate limiting
const limiter = rateLimit({
  windowMs: process.env.RATE_LIMIT_WINDOW_MS || 60000,
  max: process.env.RATE_LIMIT_MAX_REQUESTS || 100
});
app.use(limiter);

// Routes
app.use('/api/phones', phonesRouter);
app.use('/api/sims', simsRouter);
app.use('/api/messages', messagesRouter);

// Route de test
app.get('/api/health', (req, res) => {
  res.json({ status: 'OK', message: 'API en ligne' });
});

// Gestion des erreurs
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({
    status: 'error',
    message: 'Une erreur est survenue'
  });
});

const PORT = process.env.PORT || 3001;
app.listen(PORT, () => {
  console.log(`Serveur démarré sur le port ${PORT}`);
}); 
 
 