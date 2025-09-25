# My Dotfiles

A personal dotfiles repository for managing configuration files across different applications and environments. This repository uses automated scripts to symlink configurations and manage extensions, making it easy to maintain consistent setups across multiple systems.

Each application directory contains detailed README files with specific customization instructions and automated deployment scripts.

## Applications

### [Limine Bootloader](./limine/)

Dynamic bootloader configuration with automatic machine-specific value detection for secure, portable deployment across different systems.

**Quick setup:**

```bash
cd limine
chmod +x ./dot
./dot
```

### [Hyprland](./hypr/)

Wayland compositor configuration with custom key bindings, input settings, and monitor configurations.

**Quick setup:**

```bash
cd hypr
chmod +x ./dot
./dot
```

### [VS Code / Cursor](./vscode/)

Editor configuration supporting both Visual Studio Code and Cursor with settings synchronization and extension management.

**Quick setup:**

```bash
cd vscode
chmod +x ./dot
./dot vscode    # For VS Code
./dot cursor    # For Cursor
```

### [Waybar](./waybar/)

Wayland status bar configuration with custom styling and automatic reload functionality.

**Quick setup:**

```bash
cd waybar
chmod +x ./dot
./dot
```

### [Plymouth](./plymouth/)

Custom boot splash theme with personalized graphics and animations.

**Quick setup:**

```bash
cd plymouth
chmod +x ./dot
./dot
```

### [Chromium](./chromium/)

Browser configuration with optimized flags and settings.

**Quick setup:**

```bash
cd chromium
chmod +x ./dot
./dot
```

### [Omarchy](./omarchy/)

System-specific Omarchy configuration and customizations.

**Quick setup:**

```bash
cd omarchy
chmod +x ./dot
./dot
```
