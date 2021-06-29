#!/bin/sh

# Install brew
if !(type 'brew' > /dev/null 2>&1); then
  echo 'Not exist brew.'
  echo 'Install brew.'

  # Install brew command.
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  # If install brew failed, exit this script.
  if !(type 'brew' > /dev/null 2>&1); then
    echo 'Fail to install brew.'
    exit 1;
  fi

fi


# Install via brew
brew bundle --file=./Brewfile

# vim
chmod u+x ./vim/install.sh
./vim/install.sh

# zsh
chmod u+x ./zsh/install.sh
./zsh/install.sh

# tmux
chmod u+x ./tmux/install.sh
./tmux/install.sh
