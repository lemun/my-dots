# Plymouth Boot Splash Configuration

This directory contains the custom **Plymouth** theme for the Omarchy system.

- `shaisinai.plymouth` - Theme configuration file
- `shaisinai.script` - Main theme script with animations and logic
- `logo.png` - Main logo image
- `progress_bar.png` - Progress bar fill image
- `progress_box.png` - Progress bar container image
- `lock.png` - Lock icon for password dialogs
- `entry.png` - Password entry field background
- `bullet.png` - Password character bullets

What it does:

1. Copy all theme files to `/usr/share/plymouth/themes/shaisinai/`
2. Set the theme as the default Plymouth theme
3. Rebuild the Plymouth initramfs

---

## Export your current Waybar config

```bash
cp -a ~/.config/waybar/config.jsonc ~/my-dots/waybar/config.jsonc
cp -a ~/.config/waybar/style.css    ~/my-dots/waybar/style.css
```

## Applying the dotfiles

Make the script executable once:

```bash
chmod +x ./dot
```

Run it:

```bash
./dot
```
