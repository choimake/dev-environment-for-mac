#!/bin/sh

jenv enable-plugin export

# インストールしているjavaがkeg-onlyになっているため、シンボリックリンクを作成する
sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

jenv add $(/usr/libexec/java_home)
