#!/bin/bash

if [[ $1 != 'yes' ]]; then
  echo 'Type yes to confirm'
  exit 1
fi

rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
