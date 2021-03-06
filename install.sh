#!/bin/bash

# Install tmux
sudo apt-get install -y tmux

# Install teamocil
gem install --quiet teamocil

# Git config
sudo rm -f ~/.gitconfig && cp ~/.dotfiles/.gitconfig ~/.gitconfig

# aliases
rm -f ~/.bash_aliases && cp ~/.dotfiles/.bash_aliases ~/.bash_aliases
chmod +x ~/.bash_aliases

# Install ohmyzsh
rm -rf ~/.oh-my-zsh/
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended"

# zsh plugins under ~/.oh-my-zsh/custom folder
mkdir ~/.oh-my-zsh/custom
git clone https://github.com/zsh-users/zsh-history-substring-search ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Custom terminal config
# cat ~/.dotfiles/.bashrc >> ~/.bashrc
rm -f ~/.bashrc && cp ~/.dotfiles/.bashrc ~/.bashrc
rm -f ~/.zshrc && cp ~/.dotfiles/.zshrc ~/.zshrc

# Install scm_breeze
rm -rf ~/.scm_breeze && git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze && ~/.scm_breeze/install.sh
rm -f ~/.git.scmbrc && cp ~/.dotfiles/.git.scmbrc ~/.git.scmbrc

# Install rupa/z
curl -o ~/z.sh https://raw.githubusercontent.com/rupa/z/master/z.sh && chmod +x ~/z.sh

echo 'export PATH="$PATH:$HOME/.rvm/bin"' >> ~/.zshrc
echo 'export PATH="$PATH:$HOME/.rvm/bin"' >> ~/.bashrc