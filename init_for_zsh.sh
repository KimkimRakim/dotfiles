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
  echo "zstyle ':prezto:load' pmodule 'syntax-highlighting' " >> ~/.zpreztorc
  echo "######################################"
  echo "## prezto installation is completed ##"
  echo "######################################"
fi

#######################################
# Install zplug
#######################################
if [ -e ~/.zplug ]; then
  echo "zplug is already installed"
else
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
  echo "######################################"
  echo "## zplug installation is completed  ##"
  echo "######################################"
fi 

#######################################
# Install fzf
#######################################
if [ -e ~/.fzf ]; then
  echo "fzf is already installed"
else
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
  echo "######################################"
  echo "## fzf installation is completed    ##"
  echo "######################################"
fi

#######################################
# Install tig
#######################################
if [ -e ~/bin/tig ]; then
  echo "tig is already installed"
else
  git clone git://github.com/jonas/tig.git ~/src-tig
  cd ~/src-tig
  pwd
  make
  make install
  if [ $? = 0 ]; then
    echo "tig install is completed"
    cd ~
    rm -rf ~/src-tig
  fi
  echo "######################################"
  echo "## tig installation is completed    ##"
  echo "######################################"
fi

#######################################
# Deploy .zshrc to ${HOME}
#######################################
if [ -e ~/.zshrc ]; then
  unlink ~/.zshrc
  echo unlinked
fi

ln -sf ${PWD}/.zshrc ~/.zshrc
if [ $? = 0 ]; then
  echo success synbolic link .zshrc
fi
