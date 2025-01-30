#!/bin/bash
docker run -d \
    --name my-flask-container \
    -p 5500:5500 \
    my-flask-app:latest
