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


#
# jenv
#

eval "$(jenv init -)"


### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

#
# add zsh plugins
#

# 補完
zinit light zsh-users/zsh-autosuggestions
# シンタックスハイライト
zinit light zdharma/fast-syntax-highlighting
# Ctrl+r でコマンド履歴を検索
zinit light zdharma/history-search-multi-word
