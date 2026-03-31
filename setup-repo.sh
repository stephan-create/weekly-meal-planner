#!/bin/bash
# Run dit script vanuit de weekly-meal-planner map
# Zorg dat je mcp-picnic-main map er al in staat (hernoemd naar mcp-picnic)

cd "$(dirname "$0")"

# Init repo
git init
git remote add origin https://github.com/stephan-create/weekly-meal-planner.git

# Stage alles
git add README.md
git add weekly-meal-planner.skill
git add mcp-picnic/

# Commit en push
git commit -m "Initial release: weekly meal planner skill + Picnic MCP

Includes:
- weekly-meal-planner.skill (Claude Cowork skill)
- mcp-picnic/ (Picnic supermarket MCP server, from ivo-toby/mcp-picnic)
- README with installation instructions"

git branch -M main
git push -u origin main

echo "✅ Done! Repo live op: https://github.com/stephan-create/weekly-meal-planner"
