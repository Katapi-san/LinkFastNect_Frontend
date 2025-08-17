#!/bin/bash

# Exit on any error
set -e

echo "Starting deployment..."

# Install dependencies
echo "Installing dependencies..."
npm ci --production=false

# Build the application
echo "Building Next.js application..."
npm run build

# Install only production dependencies
echo "Installing production dependencies..."
npm ci --production

echo "Deployment completed successfully!"
