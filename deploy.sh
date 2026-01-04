#!/bin/bash

# OIM Daily Reporting PWA - Deployment Helper
# Run this script to set up and test your PWA

echo "🏗️ OIM REPORTS PWA - DEPLOYMENT HELPER"
echo "======================================="
echo ""

# Check if Python is available
if command -v python3 &> /dev/null; then
    PYTHON_CMD="python3"
elif command -v python &> /dev/null; then
    PYTHON_CMD="python"
else
    echo "❌ Python not found. Please install Python first."
    exit 1
fi

echo "✅ Python found: $PYTHON_CMD"
echo ""

# Get local IP address
echo "📡 Your Network Information:"
echo "----------------------------"
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    IP_ADDR=$(ifconfig | grep "inet " | grep -v 127.0.0.1 | awk '{print $2}' | head -1)
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    IP_ADDR=$(hostname -I | awk '{print $1}')
else
    # Windows (Git Bash/WSL)
    IP_ADDR=$(ipconfig | grep -i "IPv4" | head -1 | awk '{print $NF}')
fi

echo "Local IP: $IP_ADDR"
echo "Localhost: localhost"
echo ""

# Menu
echo "🚀 What would you like to do?"
echo "----------------------------"
echo "1. Start local server (Port 8000)"
echo "2. Start local server (Custom port)"
echo "3. Generate icons only"
echo "4. Check PWA requirements"
echo "5. Exit"
echo ""

read -p "Enter choice [1-5]: " choice

case $choice in
    1)
        PORT=8000
        echo ""
        echo "🌐 Starting server on port $PORT..."
        echo "-----------------------------------"
        echo ""
        echo "✅ Access URLs:"
        echo "   Local:   http://localhost:$PORT"
        echo "   Network: http://$IP_ADDR:$PORT"
        echo ""
        echo "📱 Share network URL with your team!"
        echo "🛑 Press Ctrl+C to stop server"
        echo ""
        $PYTHON_CMD -m http.server $PORT
        ;;
    
    2)
        echo ""
        read -p "Enter port number: " PORT
        echo ""
        echo "🌐 Starting server on port $PORT..."
        echo "-----------------------------------"
        echo ""
        echo "✅ Access URLs:"
        echo "   Local:   http://localhost:$PORT"
        echo "   Network: http://$IP_ADDR:$PORT"
        echo ""
        echo "📱 Share network URL with your team!"
        echo "🛑 Press Ctrl+C to stop server"
        echo ""
        $PYTHON_CMD -m http.server $PORT
        ;;
    
    3)
        echo ""
        echo "🎨 Opening icon generator..."
        echo "----------------------------"
        echo ""
        echo "1. Browser will open icon-generator.html"
        echo "2. Click 'Generate Icons' button"
        echo "3. 8 PNG files will download"
        echo "4. Icons ready to use!"
        echo ""
        
        # Try to open browser
        if [[ "$OSTYPE" == "darwin"* ]]; then
            open icon-generator.html
        elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
            xdg-open icon-generator.html
        else
            start icon-generator.html
        fi
        ;;
    
    4)
        echo ""
        echo "🔍 Checking PWA Requirements..."
        echo "-------------------------------"
        echo ""
        
        # Check files
        files=("index.html" "manifest.json" "service-worker.js" "icon-generator.html")
        for file in "${files[@]}"; do
            if [ -f "$file" ]; then
                echo "✅ $file"
            else
                echo "❌ $file (MISSING!)"
            fi
        done
        
        echo ""
        echo "📋 Icon Files (Generate if missing):"
        icons=(72 96 128 144 152 192 384 512)
        for size in "${icons[@]}"; do
            if [ -f "icon-$size.png" ]; then
                echo "✅ icon-$size.png"
            else
                echo "⚠️  icon-$size.png (Generate using option 3)"
            fi
        done
        
        echo ""
        echo "📱 Installation Support:"
        echo "   iOS Safari:    ✅ Add to Home Screen"
        echo "   Android Chrome: ✅ Install App"
        echo "   Desktop Chrome: ✅ Install PWA"
        echo "   Desktop Edge:   ✅ Install PWA"
        echo ""
        echo "🌐 HTTPS Required: Only for production (not localhost)"
        echo ""
        ;;
    
    5)
        echo ""
        echo "👋 Goodbye!"
        exit 0
        ;;
    
    *)
        echo ""
        echo "❌ Invalid choice. Please run script again."
        exit 1
        ;;
esac
