#!/bin/sh

# zinit install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

# copy zshrc
SCRIPT_DIR=$(cd $(dirname $0); pwd)
ln -sf $SCRIPT_DIR/.zshrc ~/.zshrc

# load zshrc
source ~/.zshrc
