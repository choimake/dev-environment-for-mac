#!/bin/sh

anyenv init
anyenv install --init

# 各種*envコマンドのパスを通すため
echo 'eval "$(anyenv init -)"' >> ~/.zshenv
