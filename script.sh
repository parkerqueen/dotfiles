#!/bin/bash

# Updating Apt Cache
sudo apt update -y && sudo apt upgrade -y

# ZSH Setup
sudo apt install -y zsh
chsh -s $(which zsh)

# Oh My ZSH Setup
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
cp -f .zshrc ~
cp -f .p10k.zsh ~