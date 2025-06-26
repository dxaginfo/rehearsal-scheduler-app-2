const express = require('express');
const app = express();
app.use(express.json());
app.get('/api/health', (req, res) => res.send({status:'ok'}));
// More routes to be added for event scheduling, attendance, etc.
module.exports = app;