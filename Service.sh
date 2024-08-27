#!/bin/bash

# Define the service name
SERVICE="httpd"

# Check if the service is running
if systemctl is-active --quiet $SERVICE; then
    echo "$SERVICE is already running."
else
    echo "$SERVICE is not running. Starting $SERVICE..."
    # Start the service
    sudo systemctl start $SERVICE
    
    # Check if the service started successfully
    if systemctl is-active --quiet $SERVICE; then
        echo "$SERVICE started successfully."
    else
        echo "Failed to start $SERVICE."
    fi
fi
