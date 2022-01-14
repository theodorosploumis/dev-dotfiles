#!/bin/bash

# Basic aliases
alias update="sudo apt-fast update"
alias upgrade="sudo apt-fast upgrade"
alias install="sudo apt-fast install"
alias remove="sudo apt-fast remove"
alias autoremove="sudo apt-fast autoremove"
alias fix-broken="sudo apt --fix-broken install"
alias package-reconfigure="sudo dpkg --configure -a"
alias my-ip="dig -4 TXT +short o-o.myaddr.l.google.com @ns1.google.com"

function upgrade-only() {
  sudo apt-get install --only-upgrade "$1"
}

function install-deb() {
  sudo dpkg -i ./"$1"
}

# System aliases
alias show-disks="sudo fdisk -l"
alias show-graphics="lspci -nn | grep '\[03'"
alias re-apache="sudo service apache2 restart"

# Several personal
alias dk="cd ~/"
alias html="cd /var/www/html"

# upload USER@SERVER
function ssh-upload() {
  ssh-copy-id -i ~/.ssh/id_rsa.pub -o PubkeyAuthentication=no "$1"
}

# Utilities & scripts
alias x="exit"
alias cl="clear"
alias ssh-show="cat ~/.ssh/id_rsa.pub"
alias untar="tar -xvzf"
alias maths="expr (\*)"
alias l='ls -CF'
alias ll='ls -alF'
alias la='ls -A'
alias list="ls -l | "
alias ls-1='ls -1'
alias ls-a1="ls -A1 *"
alias ls-only-files="ls -p | grep -v /"
alias ls-mod="stat -c '%A %a %U:%G %s %n' *"
alias la-mod="stat -c '%A %a %U:%G %n' .* *"
alias count="ls -1 | wc -l"
alias greekconvert="iconv -f iso8859-7 -t utf-8"
alias print-tree="tree -F -C --dirsfirst"

# Image Tools
alias rename-gpg-images='for f in *.JPG; do mv "$f" "`echo $f | sed s/_MG/IMG/`"; done'

# Show exif from image using imagemagick
function show-exif() {
  identify -verbose $@ | grep "exif:"
}

# Print cli results to html table
# Used for 3 columns table
# Usage: html-table results.txt
function html-table(){
  echo "<table>"
  cat "$@" | while read col1 col2 col3; do
    echo "<tr><td>${col1}</td><td>${col2}</td><td>${col3}</td></tr>"
  done
  echo "</table>"
}

# Aliases Git
alias st="gs"
alias git-undo="git reset --soft HEAD^"
alias git-reset="git reset --hard"
alias git-unstage="git reset HEAD --"
alias ac="git add --all && git commit -am 'Autocommit' && git push"
alias git-graph='git log --graph --full-history --all --pretty=format:"%h%x09%d%x20%s"'
alias git-remove-local-tags="git tag | xargs git tag -d"
alias git-remove-remote-tags="git tag -l | xargs -n 1 git push --delete origin"
alias git-inline-diff="git diff --ignore-all-space --word-diff=color  --unified=0 HEAD^1..HEAD"
alias git-inline-diff-unstaged="git diff --ignore-all-space --word-diff=color  --unified=0"

# Git add all and commit
function gam(){
  git add . && git commit -m "$@"
}

# Git add all, commit and push
function gap(){
  git add . && git commit -m "$@" && git push
}

# Git add all, commit and push (--no-verify)
function gapf(){
  git add . && git commit -m "$@" --no-verify && git push
}

# Git commit with message
function gim(){
  git commit -m "$@"
}

# Git commit with --no-verify
function gimf(){
  git add . && git commit -m "$@" --no-verify
}

# Git commit with message, no pre-commit
function ginm(){
  git commit -nm "$@"
}

alias ssh-faaast="ssh root@159.69.27.223"
alias ssh-distros="ssh root@159.69.27.223"

alias ssh-romansis="blue-terminal 'ssh romansis@server35.cretaforce.gr'"

alias ssh-evishop="ssh-login evishop server10.cretaforce.gr evi-lingerie.gr www"
alias ssh-autoxrisafis="blue-terminal 'ssh xrisafis@server39.cretaforce.gr'"

alias ssh-plefsisspace="ssh-login plefsis server14.cretaforce.gr plefsis-space.gr/www"
alias ssh-rizakos="ssh-login prisma server17.cretaforce.gr rizakos.com.gr www"
alias ssh-eproodos="ssh-login eproodos server18.cretaforce.gr eproodos.gr www"
alias ssh-delta-store="ssh-login deltapi server24.cretaforce.gr delta-pi-systems.eu store"
alias ssh-delta-www="ssh-login deltapi server24.cretaforce.gr delta-pi-systems.eu www"
alias ssh-mydrupal="ssh mydrupal@server8.cretaforce.gr -t 'cd mydrupal.gr/www; bash'"

alias ssh-diagram="ssh-login diagram server4.cretaforce.gr diagrammiseis.gr www"
alias ssh-paradeisis="ssh-login parispar server18.cretaforce.gr paradeisis.gr www"
alias ssh-inexarchia="blue-terminal 'ssh fiorakis@server32.cretaforce.gr'"
alias ssh-scarpediem="blue-terminal 'ssh tplcom@server27.cretaforce.gr'"

alias ssh-getta="blue-terminal 'ssh getta@server105.cretaforce.gr'"

# EWORX live servers
alias ssh-eworx-stage-cepol="blue-terminal 'ssh eworx@web-st2.cepol.eworx.gr'"
alias ssh-eworx-stage-easa-drupal="blue-terminal 'ssh eworx@easa-st2.eworx.gr'"
alias ssh-eworx-stage-easa-mautic="blue-terminal 'ssh eworx@easa-st3.eworx.gr'"
alias ssh-eworx-stage-impactour="blue-terminal 'ssh eworx@web-st.impactour.eworx.gr'"
alias ssh-eworx-production-impactour="blue-terminal 'ssh eworx@web-pr.impactour.eworx.gr'"

# creates a directory and cds into it
function din() {
  mkdir -p "$@" && cd "$@"
}

# php built-in server on current directory. Port as an argument.
function php-server(){
  php -S localhost:${1}
}

# SSH login shortcut
# $ ssh-login [USER] [SERVER] [DOMAIN] [SUBDOMAIN]
function ssh-login() {
    ssh ${1}@${2} -t "cd ~/${3}/${4}; bash"
}

alias xdrush='XDEBUG_CONFIG="idekey=PHPSTORM" drush'
alias pdrush='XDEBUG_CONFIG="profiler_enable=1" drush'

function drush(){
  /var/www/html/vendor/bin/drush "$@"
}