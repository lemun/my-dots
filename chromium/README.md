# Dotfiles - Chromium

This directory contains Chromium browser configuration for the Omarchy system.

- `chromium-flags.conf` - Chromium startup flags configuration

What it does:
These flags provide stable rendering by disabling hardware acceleration features that may cause issues

- `--use-gl=egl` - Use EGL for OpenGL
- `--disable-gpu-rasterization` - Disable GPU rasterization
- `--disable-zero-copy` - Disable zero-copy operations
- `--disable-features=VaapiVideoDecoder,VaapiVideoEncoder,Vulkan,Accelerated2dCanavas,CanvasOopRasterization,UseSkiaRenderer` - Disable various hardware acceleration features

---

## Export your current Chromium config

```bash
cp -a ~/.config/chromium-flags.conf ~/my-dots/chromium/chromium-flags.conf
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
