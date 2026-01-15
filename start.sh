#!/bin/bash

echo "Installing Blotato custom node..."

# Try the community version first (more stable)
npm install -g n8n-nodes-blotato --no-audit --legacy-peer-deps

# If that fails, try the official package
if [ $? -ne 0 ]; then
    echo "Community package failed, trying official package..."
    npm install -g @blotato/n8n-nodes-blotato --no-audit --legacy-peer-deps
fi

echo "Blotato node installation complete!"
echo "Starting n8n..."

# Start n8n
n8n start
