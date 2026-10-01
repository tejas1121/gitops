// Purpose: Provide the entry point for the sample Node.js/Express REST API.
// index.js
// Minimal Express API — the workload running on top of the platform.
// The app itself isn't the point; it's just enough to prove the pipeline works.

const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.json({ message: 'GitOps EKS Platform - app is running', timestamp: new Date().toISOString() });
});

// Kubernetes will hit this to check if the pod is alive
app.get('/health', (req, res) => {
  res.status(200).json({ status: 'healthy' });
});

app.listen(PORT, () => {
  console.log(`App listening on port ${PORT}`);
});