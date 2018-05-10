#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# zsh
ln -s ${BASEDIR}/.zshrc ~/.zshrc

# git
ln -s ${BASEDIR}/.gitconfig ~/.gitconfig

#code 

ls -s ${BASEDIR}/settings.json ~/.config/Code/User/settings.json
ls -s ${BASEDIR}/keybindings.json ~/.config/Code/User/keybindings.json
ls -s ${BASEDIR}/javascript.json ~/.config/Code/User/snippets/javascript.json