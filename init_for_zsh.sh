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
ln -sf ${PWD}/.zshrc ~/.zshrc
