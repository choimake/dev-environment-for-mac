#!/bin/sh

# Install brew
if !(type 'brew' > /dev/null 2>&1); then
  echo 'Not exist brew.'
  echo 'Install brew.'

  # Install brew command.
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  # Add brew path.(M1)
  if [ $(sysctl -a machdep.cpu.brand_string | awk '{print $3}') = 'M1' ]; then
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
  fi

  # If install brew failed, exit this script.
  if !(type 'brew' > /dev/null 2>&1); then
    echo 'Fail to install brew.'
    exit 1;
  fi

fi


# Install via brew
brew bundle --file=./Brewfile

# アプリケーションに実行許可を与える
sudo xattr -dr com.apple.quarantine /Applications/Google\ Chrome.app
sudo xattr -dr com.apple.quarantine /Applications/iTerm.app
sudo xattr -dr com.apple.quarantine /Applications/firefox.app
sudo xattr -dr com.apple.quarantine /Applications/Chatwork.app
sudo xattr -dr com.apple.quarantine /Applications/Alfred\ 4.app
sudo xattr -dr com.apple.quarantine /Applications/Discord.app
sudo xattr -dr com.apple.quarantine /Applications/Visual\ Studio\ Code.app
sudo xattr -dr com.apple.quarantine /Applications/zoom.us.app
sudo xattr -dr com.apple.quarantine /Applications/Notion.app
sudo xattr -dr com.apple.quarantine /Applications/Thunderbird.app
sudo xattr -dr com.apple.quarantine /Applications/Discord.app
sudo xattr -dr com.apple.quarantine /Applications/Docker.app
sudo xattr -dr com.apple.quarantine /Applications/Insomnia.app
sudo xattr -dr com.apple.quarantine /Applications/Clickup.app
sudo xattr -dr com.apple.quarantine /Applications/Postman.app
sudo xattr -dr com.apple.quarantine /Applications/JetBrains\ Toolbox.app

# dockerはopenしないとコマンドが利用できない
open /Applications/Docker.app

# vim
chmod u+x ./vim/install.sh
./vim/install.sh

# zsh
chmod u+x ./zsh/install.sh
./zsh/install.sh

# tmux
chmod u+x ./tmux/install.sh
./tmux/install.sh

# editorconfig
chmod u+x ./editorconfig/install.sh
./editorconfig/install.sh

# vscode(extensions)
chmod u+x ./vscode/install.sh
./vscode/install.sh

# anyenv
chmod u+x ./anyenv/install.sh
./anyenv/install.sh
