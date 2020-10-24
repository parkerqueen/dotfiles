#!/bin/bash

# Updating Apt Cache
sudo apt update -y && sudo apt upgrade -y

# ZSH Setup
sudo apt install -y zsh
chsh -s $(which zsh)

# Oh My ZSH Setup
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo cp -r meslo-fonts/ /usr/share/fonts/truetype/
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp -f .zshrc ~
cp -f .p10k.zsh ~

# Gnome Terminal Profiles
dconf load /org/gnome/terminal/legacy/profiles:/ < terminal-profiles/gnome-terminal-profiles.dconf
