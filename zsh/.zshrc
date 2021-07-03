export LANG=ja_JP.UTF-8

autoload -Uz compinit
compinit

#
# colors
#

autoload -U colors
colors

# prompt colors
PROMPT="%{${fg[green]}%}[%n@%~]%{${reset_color}%}"

# Enable ls colors
export LSCOLORS=Gxfxcxdxbxegedabagacad

#
# aliases
#

## directories
alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ....='cd ../../../..'

alias md='mkdir -p'
alias rd='rmdir'

## ls
alias ls="ls -G"
alias ll="ls -lG"

## git

git_current_branch(){
  local ref
  ref=$(command git rev-parse --abbrev-ref HEAD 2> /dev/null)
  echo $ref
}

alias g='git'
alias gb='git branch'
alias gbd='git branch -d'
alias gs='git status'
alias gp='git pull'
alias gpp='git pull --prune'
alias gch='git checkout'
alias gchb='git checkout -b'
alias ga='git add'
alias gco='git commit'
alias gco!='git commit --amend'
alias gcom='git commit -m'
alias gcoam='git commit -a -m'
alias gd='git diff'
alias gm='git merge'
alias gf='git fetch'
alias ggpull='git pull origin ${git_current_branch}'
alias ggpush='git push origin ${git_current_branch}'

## docker
alias d='docker'
alias dc='docker-compose'
alias dcnt='docker container'

## history
alias h='history'
alias hs='history | grep'
alias hsi='history | grep -i'


#
# anyenv
#

## 各種*envコマンドのパスを通す
eval "$(anyenv init -)"
