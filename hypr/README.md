# Hyprland Configuration

This directory contains Hyprland configuration for the Omarchy system.

- `monitors.conf` - Monitor and display configuration
- `bindings.conf` - Application key bindings
- `input.conf` - Input devices configuration (keyboard, mouse, touchpad)

---

## Export your current Hyprland config

```bash
cp -a ~/.config/hypr/monitors.conf ~/my-dots/hypr/monitors.conf
cp -a ~/.config/hypr/bindings.conf ~/my-dots/hypr/bindings.conf
cp -a ~/.config/hypr/input.conf ~/my-dots/hypr/input.conf
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

## Display Settings

The configuration is optimized for an **iMac (Mid 2011) 21.5"** with **AMD Radeon HD 6750M/6770M graphics** for legacy hardware compatibility.

- **Monitor**: `eDP-1` at 1920x1080@60Hz
- **Scaling**: 1x (no fractional scaling)
- **Position**: Primary display at 0x0
- `WLR_FRACTIONAL_SCALE=0` - Disable fractional scaling
- `GDK_SCALE=1` - GTK applications scaling
- `QT_AUTO_SCREEN_SCALE_FACTOR=0` - Disable Qt auto-scaling
- `QT_SCALE_FACTOR=1` - Qt applications scaling
- `QT_QPA_PLATFORM=wayland` - Use Wayland for Qt applications
- `XCURSOR_SIZE=24` - Cursor size (increase to 28-32 if too small)
- `WLR_DRM_NO_ATOMIC=1` - Disable atomic modesetting for stability
- `WLR_NO_HARDWARE_CURSORS` - Commented out (hardware cursors enabled for performance)
- `LIBGL_ALWAYS_SOFTWARE=0` - Hardware OpenGL enabled

## Key Bindings Settings

- `SUPER + Return` - Terminal (with smart working directory)
- `SUPER + F` - File manager (Nautilus)
- `SUPER + B` - Browser
- `SUPER + Shift + B` - Browser (private mode)
- `SUPER + N` - Editor
- `SUPER + /` - Passwords (Bitwarden)
- `SUPER + M` - Music (Spotify)
- `SUPER + T` - Activity monitor (btop)
- `SUPER + D` - Docker manager (lazydocker)
- `SUPER + O` - Obsidian (with Wayland optimizations)
- `SUPER + A` - ChatGPT
- `SUPER + Y` - YouTube
- `SUPER + Shift + G` - WhatsApp Web

## Input Settings

- **Layouts**: US English and Hebrew (`us,il`)
- **Layout switching**: `Alt + Shift` to toggle between layouts
- **Key repeat**: Fast repeat rate (40) with 600ms delay
- **Numlock**: Enabled by default
- **Natural scrolling**: Enabled (inverse/macOS-style scrolling)
- **Scroll speed**: Reduced to 0.2 for precise control
- **Terminal scrolling**: Special faster scroll rate (0.1) for terminals
