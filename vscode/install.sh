#!/bin/sh

code --install-extension editorconfig.editorconfig
code --install-extension vscodevim.vim
code --install-extension github.github-vscode-theme
code --install-extension oderwat.indent-rainbow

# VSCode+vimでリピートキーを有効にするコマンド
# https://github.com/VSCodeVim/Vim/issues/729
defaults write -g ApplePressAndHoldEnabled -bool false
