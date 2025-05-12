#!/usr/bin/env bash
set -euo pipefail

# Check if directory exists and remove it or update it
if [ -d "ComfyUI-HiDream-Template" ]; then
  echo "📂 Directory already exists. Removing it first..."
  rm -rf ComfyUI-HiDream-Template
fi

echo "📥 Cloning ComfyUI-HiDream-Template…"
git clone https://github.com/Hearmeman24/ComfyUI-HiDream-Template.git

echo "📂 Moving start.sh into place…"
mv ComfyUI-HiDream-Template/src/start.sh /

echo "▶️ Running start.sh"
bash /start.sh