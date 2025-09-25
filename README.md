# My Dotfiles

A personal dotfiles repository for managing configuration files across different applications and environments. This repository uses automated scripts to symlink configurations and manage extensions, making it easy to maintain consistent setups across multiple systems.

Each application directory contains detailed README files with specific customization instructions:
- [VS Code/Cursor Configuration Guide](./vscode/README.md)
- [Waybar Configuration Guide](./waybar/README.md)


## Repository Structure

```
my-dots/
├── README.md           # This file
├── vscode/            # VS Code/Cursor configuration
│   ├── dot            # Installation script
│   ├── settings.json  # Editor settings
│   ├── extensions.txt # Extension list with versions
│   └── README.md      # VS Code specific documentation
└── waybar/            # Waybar configuration (Linux status bar)
    ├── dot            # Installation script
    ├── config.jsonc   # Main waybar configuration
    ├── style.css      # Custom stylesheet
    └── README.md      # Waybar specific documentation
```

## Applications

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