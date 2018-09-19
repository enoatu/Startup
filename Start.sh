#!/usr/bin/env bash
set -eux
sudo apt-get update

#必要なものをいれる 不要なものはコメントアウト

#優先度高
sudo apt-get -y install ufw build-essential
#優先度中
sudo apt-get -y install tmux
#優先度低
sudo apt-get -y install tree zsh imagemagick

#vimfilesインストール
if [ ! -e ~/vimfiles ]; then
cd
git clone https://github.com/enoatu/vimfiles.git
sh ~/vimfiles/install.sh
fi

#anyenvインストール
if [ ! -e ~/.anyenv ]; then
git clone https://github.com/riywo/anyenv ~/.anyenv
echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(anyenv init -)"' >> ~/.bashrc
fi
 #env系　インストール
  #anyenv install rbenv
  #anyenv install plenv
  #anyenv install pyenv
  ~/.anyenv/bin/anyenv install phpenv
  #anyenv install ndenv
  #anyenv install denv
  #anyenv install jenv
  #anyenv install luaenv
  #anyenv install goenv

#mariaDBインストール
sudo apt-get -y install mysql-server

#必要
exec $SHELL -l

