# Dotfiles - Waybar
This repo contains my **waybar** configuration.

- `config.jsonc` → main config (JSON with comments)
- `style.css` → custom stylesheet
- `dot` → script to apply everything (symlink configs + reload Waybar)

What it does:
- Backs up existing `config.jsonc` and `style.css` before replacing (adds a timestamped `.bak.*`)
- Symlinks `config.jsonc` and `style.css` from the repo into `~/.config/waybar/`
- Reloads Waybar automatically (sends `SIGUSR2`) if it’s already running
- Prints status of backups, links, and reload so you know what happened

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