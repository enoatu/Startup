#!/usr/bin/env bash
set -eux
sudo apt-get update

#$BI,MW$J$b$N$r$$$l$k(B $BITMW$J$b$N$O%3%a%s%H%"%&%H(B

#$BM%@hEY9b(B
sudo apt-get -y install ufw build-essential
#$BM%@hEYCf(B
sudo apt-get -y install tmux
#$BM%@hEYDc(B
sudo apt-get -y install tree zsh imagemagick

#vimfiles$B%$%s%9%H!<%k(B
if [ ! -e ~/vimfiles ]; then
cd
git clone https://github.com/enoatu/vimfiles.git
sh ~/vimfiles/install.sh
fi

#anyenv$B%$%s%9%H!<%k(B
if [ ! -e ~/.anyenv ]; then
git clone https://github.com/riywo/anyenv ~/.anyenv
echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(anyenv init -)"' >> ~/.bashrc
fi
 #env$B7O!!%$%s%9%H!<%k(B
  #anyenv install rbenv
  #anyenv install plenv
  #anyenv install pyenv
  ~/.anyenv/bin/anyenv install phpenv
  #anyenv install ndenv
  #anyenv install denv
  #anyenv install jenv
  #anyenv install luaenv
  #anyenv install goenv

#mariaDB$B%$%s%9%H!<%k(B
sudo apt-get -y install mysql-server

#$BI,MW(B
exec $SHELL -l

