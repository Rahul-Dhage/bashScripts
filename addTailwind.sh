#!/bin/bash

# Install necessary packages
yarn add -D tailwindcss postcss autoprefixer

# Generate config files
yarn tailwindcss init -p

# Modify tailwind.config.js
echo "module.exports = {
  content: [\"./src/**/*.{js,jsx,ts,tsx}\"],
  theme: {
    extend: {},
  },
  plugins: [],
};" > tailwind.config.js

# Add Tailwind Cindex.css
echo "@tailwind base;
@tailwind components;
@tailwind utilities;" > src/index.css

echo "setup complete"
