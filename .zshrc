# Custom search engines
ZSH_WEB_SEARCH_ENGINES=(
    dpl "https://www.drupal.org/project/"
    dnode "https://www.drupal.org/node/"
    dapi "https://api.drupal.org/search/site/"
    dcode "https://git.drupalcode.org/project/"
    dissue "https://www.drupal.org/project/issues/"
    dsearch "https://www.drupal.org/search/site/"
    dstack "http://drupal.stackexchange.com/search?q="
    bitbucket "https://bitbucket.org/dashboard/repositories?search="
    trans "https://translate.google.gr/?source=osdd#auto|auto|"
    video "https://www.youtube.com/results?search_query="
    gist "https://gist.github.com/search?q="
    mygh "https://github.com/theodorosploumis?utf8=✓&tab=repositories&q="
    drive "https://drive.google.com/drive/search?q="
    icon "https://www.flaticon.com/search?license=selection&order_by=4&color=1&stroke=1&grid=big&word="
    stack "https://stackoverflow.com/search?q="
)

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="fishy"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd/mm/yyyy"
plugins=(common-aliases z web-search ubuntu extract rsync docker zsh-syntax-highlighting history-substring-search)

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# User configuration
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/$PATH

# phpbrew
export PHPBREW_RC_ENABLE=1
export PHPBREW_SET_PROMPT=0
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

# Composer
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# Default Editor (used on tmux etc)
export EDITOR='vim'

# Highlighting
HISTCONTROL=ignoredups:ignorespace
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets root)

# bind UP and DOWN arrow keys
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# scm_breeze
[ -s "~/.scm_breeze/scm_breeze.sh" ] && source "~/.scm_breeze/scm_breeze.sh"

# Aliases
source $HOME/.bash_aliases
