#!/bin/bash
echo "================================================================="
echo "       C# Enterprise App Integration Suite1 (Local Launcher)"
echo "================================================================="
echo ""
echo "Launching local web service on http://localhost:3000..."
echo "No Node.js required! Hosting pre-compiled static assets using Python."
echo ""

# Open Google Chrome or default system browser
if [ "$(uname)" == "Darwin" ]; then
    open "http://localhost:3000"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    xdg-open "http://localhost:3000"
fi

python3 -m http.server 3000 --directory dist || python -m http.server 3000 --directory dist
