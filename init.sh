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
  echo "######################################"
  echo "## vim-plug installation is completed ##"
  echo "######################################"
fi
