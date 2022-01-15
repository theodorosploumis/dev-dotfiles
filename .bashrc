#!/bin/bash

# PS1
export PS1="\u:\w \$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/') \\$ \[$(tput sgr0)\]"

# Default editor (used on tmux etc)
export EDITOR='vim'

# phpbrew
export PHPBREW_RC_ENABLE=1
export PHPBREW_SET_PROMPT=0
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

# Composer
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# Aliases
. ~/.bash_aliases

# z search
. ~/z.sh
