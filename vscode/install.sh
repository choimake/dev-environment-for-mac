#!/bin/sh

code --install-extension editorconfig.editorconfig
code --install-extension vscodevim.vim
code --install-extension github.github-vscode-theme
code --install-extension oderwat.indent-rainbow
code --install-extension coenraads.bracket-pair-colorizer
code --install-extension naumovs.color-highlight
code --install-extension gruntfuggly.todo-tree
code --install-extension wayou.vscode-todo-highlight
code --install-extension vincaslt.highlight-matching-tag
code --install-extension jebbs.plantuml
code --install-extension hediet.vscode-drawio
code --install-extension neilbrayfield.php-docblocker
code --install-extension mehedidracula.php-namespace-resolver
code --install-extension marabesi.php-import-checker
code --install-extension damianbal.vs-phpclassgen
code --install-extension bmewburn.vscode-intelephense-client

# VSCode+vimでリピートキーを有効にするコマンド
# https://github.com/VSCodeVim/Vim/issues/729
defaults write -g ApplePressAndHoldEnabled -bool false
