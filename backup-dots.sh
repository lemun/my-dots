#!/usr/bin/env bash
set -euo pipefail

# 0) Go to your repo
cd ~/Dev/my-dots

# 1) (Optional) work on a dedicated branch for this snapshot
git switch -c backup/end4-$(date +%F) 2>/dev/null || git switch backup/end4-$(date +%F)

# 2) Ensure repo subfolders exist
mkdir -p .config .local/bin

# 3) Copy Hyprland/Wayland-related configs if they exist
#    Add/remove items to taste.
CONFIG_DIRS=(
  hypr
  waybar
  wofi
  rofi
  kitty
  alacritty
  dunst
  wlogout
  wpaperd
  swaync
  swappy
  hypridle
  hyprlock
  fastfetch
  gtk-3.0
  gtk-4.0
)

for d in "${CONFIG_DIRS[@]}"; do
  if [[ -d "$HOME/.config/$d" ]]; then
    rsync -a --delete "$HOME/.config/$d" ".config/"
  fi
done

# 4) Copy user scripts
if [[ -d "$HOME/.local/bin" ]]; then
  rsync -a --delete "$HOME/.local/bin/" ".local/bin/"
fi

# 5) Copy common dotfiles from $HOME if present
HOME_FILES=(
  .zshrc
  .bashrc
  .profile
  .bash_profile
  .gitconfig
  .inputrc
  .Xresources
  .pam_environment
)

for f in "${HOME_FILES[@]}"; do
  [[ -f "$HOME/$f" ]] && rsync -a "$HOME/$f" .
done

# 6) (Optional) Wallpapers you actually use
if [[ -d "$HOME/Pictures/wallpapers" ]]; then
  mkdir -p Pictures
  rsync -a "$HOME/Pictures/wallpapers" "Pictures/"
fi

# 7) Create a conservative .gitignore (avoid secrets/history files)
cat > .gitignore <<'IGN'
# caches / compiled
**/.cache/
**/*.log
**/*cache*
**/*.sqlite*
**/*.db

# secrets (adjust if you keep tokens elsewhere)
**/*secret*
**/*token*
**/*.pem
**/*.key

# histories
**/*history*
**/Recent*
IGN

# 8) Review & commit
git add -A
git commit -m "Initial backup of Hyprland dots (end-4) on $(date +%F)"

# 9) Push branch + set upstream (main branch name may be 'main' or 'master')
CURRENT_BRANCH="$(git branch --show-current)"
git push -u origin "$CURRENT_BRANCH"

# 10) Make a dated tag and push tags
TAG="pre-omarchy-$(date +%F)"
git tag -a "$TAG" -m "Pre-Omarchy backup"
git push --tags

echo
echo "✅ Backup complete."
echo "   Branch: $CURRENT_BRANCH"
echo "   Tag:    $TAG"

