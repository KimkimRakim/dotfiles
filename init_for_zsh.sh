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
