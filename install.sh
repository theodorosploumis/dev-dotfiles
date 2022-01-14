#!/bin/bash

rm -f ~/.bash_aliases && ln -s ~/.dotfiles/.bash_aliases ~/.bash_aliases
chmod +x ~/.bash_aliases

# Append the .bashrc file
# cat ~/.dotfiles/.bashrc >> ~/.bashrc
rm -f ~/.bashrc && ln -s ~/.dotfiles/.bashrc ~/.bashrc

# Git config
rm -f ~/.gitconfig && ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

# Install scm_breeze
rm -rf ~/.scm_breeze && git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze && \
	~/.scm_breeze/install.sh && \
    source ~/.bashrc && \
    source ~/.zshrc

# Install ohmyzsh
rm -rf ~/.oh-my-zsh/
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --keep-zshrc"

# Use my zshrc
rm -f ~/.zshrc && ln -s ~/.dotfiles/.zshrc ~/.zshrc

# Set zsh as default terminal
chsh -s $(which zsh)