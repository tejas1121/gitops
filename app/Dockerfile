# Purpose: Define the container image build for the sample Node.js API.
# Dockerfile
# Multi-stage build: keeps the final image small by not shipping build tools.

# --- Stage 1: install dependencies ---
FROM node:20-alpine AS builder
WORKDIR /app
COPY package.json package-lock.json* ./
RUN npm install --production

# --- Stage 2: minimal runtime image ---
FROM node:20-alpine
WORKDIR /app
COPY --from=builder /app/node_modules ./node_modules
COPY src ./src
COPY package.json ./

EXPOSE 3000
USER node
CMD ["node", "src/index.js"]