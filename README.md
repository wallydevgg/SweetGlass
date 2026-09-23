# SweetGlass - KDE Plasma 6 Theme Suite

A dark neon glass theme suite crafted for **KDE Plasma 6** (Plasma 6.0 through 6.8+), featuring rounded edges, translucent glass panels, blur effects, vibrant neon accents, and Aurorae window decorations.

Originally forked and modernized from [HimDek/Utterly-Sweet-Plasma](https://github.com/HimDek/Utterly-Sweet-Plasma) to create an independent, unified theme package natively compatible with KDE Plasma 6's APIv2 architecture.

---

## 🎨 Components Included

| Component | Target Location | Description |
| :--- | :--- | :--- |
| **Global Theme** | `~/.local/share/plasma/look-and-feel/SweetGlass/` | Unified Look-and-Feel for Plasma 6 |
| **Color Scheme** | `~/.local/share/color-schemes/SweetGlass.colors` | Dark palette with neon pink/blue accents |
| **Plasma Style** | `~/.local/share/plasma/desktoptheme/SweetGlass/` | Translucent glass widgets, dock/panel styling |
| **Window Decoration** | `~/.local/share/aurorae/themes/SweetGlass/` | Aurorae v2 rounded border & button decoration |
| **Konsole Theme** | `~/.local/share/konsole/SweetGlass.colorscheme` | Translucent blurred terminal colors |
| **Wallpaper** | `~/.local/share/wallpapers/SweetGlass/` | High-res default wallpaper |
| **Kvantum Theme** | `~/.config/Kvantum/SweetGlass/` | Matching translucent Kvantum style |

---

## 🚀 Installation

### Automated Install

Clone the repository and run the installation script:

```bash
git clone https://github.com/wallydevgg/SweetGlass.git
cd SweetGlass
./install.sh
```

To automatically install and apply the theme immediately:

```bash
./install.sh --apply
```

### Manual Selection

After running `./install.sh`, you can select each component individually in **KDE System Settings**:
1. **Colors**: Go to `Colors & Themes > Colors` and select **SweetGlass**.
2. **Plasma Style**: Go to `Colors & Themes > Plasma Style` and select **SweetGlass**.
3. **Window Decorations**: Go to `Colors & Themes > Window Decorations` and select **SweetGlass**.
4. **Global Theme**: Go to `Colors & Themes > Global Theme` and select **SweetGlass**.

---

## 🌟 Recommended Desktop Effects

For optimal glass and blur visuals, make sure the following effects are enabled in **System Settings > Desktop Effects**:
- **Blur**
- **Background Contrast**
- **Translucency**

---

## 📄 License

GPL-2.0+ License. See [LICENSE.md](LICENSE.md) for details.
Upstream base by [Himprakash Deka](https://github.com/HimDek).
