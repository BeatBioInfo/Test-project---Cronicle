#!/bin/sh

# Initialize Cronicle if not already set up
if [ ! -d "/usr/src/app/data" ]; then
    echo "Initializing Cronicle..."
    node bin/control.js setup
fi

# Start Cronicle in the foreground
exec node lib/main.js
