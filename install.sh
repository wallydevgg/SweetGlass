#!/usr/bin/env bash
set -e

SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

echo "==========================================="
echo " Installing SweetGlass Theme Suite (Plasma 6)"
echo "==========================================="

# 1. Color Scheme
echo "-> Installing Color Scheme..."
mkdir -p "$XDG_DATA_HOME/color-schemes"
cp -f "$SRC_DIR/SweetGlass.colors" "$XDG_DATA_HOME/color-schemes/"

# 2. Konsole Color Scheme
echo "-> Installing Konsole Color Scheme..."
mkdir -p "$XDG_DATA_HOME/konsole"
cp -f "$SRC_DIR/SweetGlass-Konsole.colorscheme" "$XDG_DATA_HOME/konsole/"
cp -f "$SRC_DIR/SweetGlass-Konsole.colorscheme" "$XDG_DATA_HOME/konsole/SweetGlass.colorscheme"

# 3. Plasma Desktop Theme
echo "-> Installing Plasma Desktop Theme..."
mkdir -p "$XDG_DATA_HOME/plasma/desktoptheme/SweetGlass"
cp -rf "$SRC_DIR/desktoptheme/"* "$XDG_DATA_HOME/plasma/desktoptheme/SweetGlass/"

# 4. Aurorae Window Decoration
echo "-> Installing Window Decoration (Aurorae)..."
mkdir -p "$XDG_DATA_HOME/aurorae/themes/SweetGlass"
cp -rf "$SRC_DIR/aurorae/"* "$XDG_DATA_HOME/aurorae/themes/SweetGlass/"

# 5. Global Look-and-Feel Theme
echo "-> Installing Global Theme (Look-and-Feel)..."
mkdir -p "$XDG_DATA_HOME/plasma/look-and-feel/SweetGlass"
cp -rf "$SRC_DIR/look-and-feel/"* "$XDG_DATA_HOME/plasma/look-and-feel/SweetGlass/"

# 6. Wallpaper
echo "-> Installing Wallpaper..."
mkdir -p "$XDG_DATA_HOME/wallpapers/SweetGlass"
cp -rf "$SRC_DIR/wallpaper/"* "$XDG_DATA_HOME/wallpapers/SweetGlass/"

# 7. Kvantum Theme
if [ -d "$SRC_DIR/kvantum" ]; then
  echo "-> Installing Kvantum Theme..."
  mkdir -p "$XDG_CONFIG_HOME/Kvantum/SweetGlass"
  cp -f "$SRC_DIR/kvantum/SweetGlass.kvconfig" "$XDG_CONFIG_HOME/Kvantum/SweetGlass/" 2>/dev/null || true
  cp -f "$SRC_DIR/kvantum/SweetGlass.svg" "$XDG_CONFIG_HOME/Kvantum/SweetGlass/" 2>/dev/null || true
fi

echo ""
echo "SweetGlass successfully installed!"
echo "Components available in KDE System Settings:"
echo "  - Global Theme: SweetGlass"
echo "  - Colors: SweetGlass"
echo "  - Plasma Style: SweetGlass"
echo "  - Window Decorations: SweetGlass"
echo "  - Wallpaper: SweetGlass"
echo ""

if [ "$1" == "--apply" ]; then
  echo "-> Applying SweetGlass theme..."
  if command -v plasma-apply-colorscheme >/dev/null 2>&1; then
    plasma-apply-colorscheme SweetGlass || true
  fi
  if command -v plasma-apply-desktoptheme >/dev/null 2>&1; then
    plasma-apply-desktoptheme SweetGlass || true
  fi
  if command -v plasma-apply-lookandfeel >/dev/null 2>&1; then
    plasma-apply-lookandfeel -a SweetGlass || true
  fi
  echo "SweetGlass applied!"
fi
