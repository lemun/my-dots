# Limine Bootloader Configuration

This directory contains the **Limine bootloader** configuration for the Omarchy system with **dynamic machine-specific values**.

- `limine.conf.template` - Template configuration with placeholder variables

---

## Boot Options

## Export your current Waybar config

```bash
cp -a boot/limine.conf ~/my-dots/limine/limine.conf
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

- **Default**: Omarchy with full hardware support
- **Radeon-only**: Forces AMD Radeon driver, disables Intel iGPU
- **Intel-only**: Disables AMD drivers, uses Intel i915 only
- **Safe TTY**: Text-only mode with nomodeset for rescue scenarios

## Dynamic Configuration System

The script will:

1. Auto-detect your machine ID and encrypted device PARTUUID
2. Generate `limine.conf` from the template
3. Backup your existing `/boot/limine.conf`
4. Copy the new configuration to `/boot/`
