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


# TODO: Install via brew
