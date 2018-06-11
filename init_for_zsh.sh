#!/bin/zsh
#######################################
# Description
#######################################
# This is for initial setup.
# You should run this script only once at first.

cd `dirname $0`
#######################################
# Install prezto
#######################################
if [ -e ~/.zprezto ]; then
  echo "prezto is already installed"
else
  git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
  setopt EXTENDED_GLOB
  for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  done
fi

#######################################
# Install zplug
#######################################
if [ -e ~/.zplug ]; then
  echo "zplug is already installed"
else
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
  echo "zplug installation is completed"
fi 

#######################################
# Install fzf
#######################################
if [ -e ~/.fzf ]; then
  echo "fzf is already installed"
else
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
  echo "fzf installation is completed"
fi


#######################################
# synbolic link
#######################################
if [ -e ~/.zshrc ]; then
  unlink ~/.zshrc
  echo unlinked
fi

ln -sf ${PWD}/.zshrc ~/.zshrc
if [ $? = 0 ]; then
  echo success synbolic link .zshrc
fi
