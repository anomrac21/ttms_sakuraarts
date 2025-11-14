#!/bin/bash

# Initialize submodules     
git submodule update --init --recursive 


# Build the Hugo site with optimization
echo "Running Hugo build with minification..."
hugo --gc --minify

echo "✅ Build completed successfully!"
