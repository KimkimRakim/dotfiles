#!/bin/bash
#######################################
# Description
#######################################
# This is for initial setup.
# You should run this script only once at first.

cd `dirname $0`
#######################################
# synbolic link
#######################################
#ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ${PWD}/.vimrc ~/.vimrc
ln -sf ${PWD}/.tmux.conf ~/.tmux.conf

#######################################
# Install vim-plug
#######################################
if [ -e ~/.vim/autoload/plug.vim ]; then
  echo "Vim-plug is already installed"
else
  # Install vim-plug from git 
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  # Install plugin listed in .vimrc
  vim -c :PlugInstall -c q! -c q!
  echo "########################################"
  echo "## vim-plug installation is completed ##"
  echo "########################################"
fi

#######################################
# Install ctags
#######################################
if !(type ctags > /dev/null 2>&1) then
  git clone https://github.com/universal-ctags/ctags.git ~/ctags
  sudo yum -y install dh-autoreconf
  cd ~/ctags
  ./autogen.sh
  ./configure --prefix ~/
  make
  make install
  if [ $? = 0 ]; then
    echo "#######################################"
    echo "## ctags installation is completed   ##"
    echo "#######################################"
  fi
else
  echo "ctags is already installed"
fi
