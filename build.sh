#!/bin/bash

# Initialize submodules if not already initialized (Netlify pre-initializes them)
if [ -d "themes/_menus_ttms/.git" ]; then
    echo "Updating theme submodule..."
    git submodule update --init --recursive || echo "Submodule update skipped (already initialized)"
else
    echo "Theme submodule already initialized by Netlify"
fi

# Build the Hugo site with optimization
echo "Running Hugo build with minification..."
hugo --gc --minify

echo "✅ Build completed successfully!"
