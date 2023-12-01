#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
BACKUP_DIR="$SCRIPT_DIR/dotfiles-backup"

backup_file() {
  echo "Backing up $1 -> $BACKUP_DIR/"
  mv "$1" "$BACKUP_DIR/"
}

mkdir -p "$BACKUP_DIR"

declare -A files=( ["$HOME/.gitconfig"]="$HOME/.config/git/.gitconfig" ["$HOME/.p10k.zsh"]="$HOME/.config/zsh/.p10k.zsh" ["$HOME/.zshrc"]="$HOME/.config/zsh/zshrc" )
for link in "${!files[@]}"; do
  src=${files[$link]}
  if [[ -f "$link" ]]; then
    backup_file "$link"
  fi

  ln -s "$src" "$link" 
done

echo "Configuration complete!"
