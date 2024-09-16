#!/bin/sh

# Run database migrations
flask db upgrade

# Start the application
exec gunicorn -k eventlet -b 0.0.0.0:8000 --timeout 120 app:application