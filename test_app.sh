#!/bin/bash
sleep 5  # Give the app time to start

# Improved test: Check for HTTP 200 OK
STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:5500)

if [[ "$STATUS" == "200" ]]; then
    echo "Flask app is running and accessible!"
else
    echo "Flask app test failed. Status code: $STATUS"
    exit 1  # Fail the Jenkins build
fi

