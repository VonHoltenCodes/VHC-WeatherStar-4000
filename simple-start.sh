#!/bin/bash
# Super simple WeatherStar launcher
# Just starts the server - you open browser manually

cd /home/vonholten/ws4kp

export WS4KP_PORT=3000

echo "=========================================="
echo "  WeatherStar 4000+ Server Starting..."
echo "=========================================="
echo ""
echo "Server will start on: http://localhost:3000"
echo ""
echo "TO USE:"
echo "  1. Wait for 'Server listening on port 3000'"
echo "  2. Open Firefox manually"
echo "  3. Go to: http://localhost:3000"
echo ""
echo "TO STOP: Press Ctrl+C in this window"
echo ""
echo "=========================================="
echo ""

npm start
