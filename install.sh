#!/bin/bash

# Git config
sudo rm -f ~/.gitconfig && cp ~/.dotfiles/.gitconfig ~/.gitconfig

# aliases
rm -f ~/.bash_aliases && cp ~/.dotfiles/.bash_aliases ~/.bash_aliases
chmod +x ~/.bash_aliases

# Install ohmyzsh
rm -rf ~/.oh-my-zsh/
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended"

# Install scm_breeze
rm -rf ~/.scm_breeze && git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze && ~/.scm_breeze/install.sh

# Install rupa/z
curl -o ~/z.sh https://raw.githubusercontent.com/rupa/z/master/z.sh && chmod +x ~/z.sh


# Custom terminal config should come last
# cat ~/.dotfiles/.bashrc >> ~/.bashrc
rm -f ~/.bashrc && cp ~/.dotfiles/.bashrc ~/.bashrc
rm -f ~/.zshrc && cp ~/.dotfiles/.zshrc ~/.zshrc
