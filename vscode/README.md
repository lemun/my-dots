# Dotfiles - VS Code / Cursor Setup
This repo contains my editor configuration (settings + extensions) for both **Visual Studio Code** and **Cursor**.

- `settings.json` → editor preferences
- `extensions.txt` → full list of installed extensions (with versions if exported that way)
- `dot` → script to apply everything (symlink configs + install extensions)

What it does:
- Detects the editor (VS Code or Cursor)
- Symlinks settings.json, keybindings.json, and snippets/ into the correct User/ directory
- Installs every extension listed in extensions.txt
- Optionally uninstalls extensions not in the list when --prune is passed
- Backs up existing real files before linking (adds a timestamped .bak.*)

---

## Export your current setup
### Visual Studio Code
Export settings:
```bash
cp ~/.config/Code/User/settings.json ~/my-dots/vscode/settings.json
cp ~/.config/Code/User/keybindings.json ~/my-dots/vscode/keybindings.json
cp -r ~/.config/Code/User/snippets ~/my-dots/vscode/snippets
```

Export extensions:
```bash
code --list-extensions --show-versions > ~/my-dots/vscode/extensions.txt
```

### Cursor
Export settings:
```bash
cp ~/.config/Cursor/User/settings.json ~/my-dots/cursor/settings.json
cp ~/.config/Cursor/User/keybindings.json ~/my-dots/cursor/keybindings.json
cp -r ~/.config/Cursor/User/snippets ~/my-dots/cursor/snippets
```

Export extensions:
```bash
cursor --list-extensions --show-versions > ~/my-dots/cursor/extensions.txt
```

## Applying the dotfiles
Make the script executable once:
```bash
chmod +x ./dot
```
Apply **VS Code**:
```bash
./dot vscode
```
Apply **Cursor**:
```bash
./dot cursor
```
Apply and **prune** any extensions not listed:
```bash
./dot vscode --prune
./dot cursor --prune
```