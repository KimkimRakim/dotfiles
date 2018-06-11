##############################################
## zprezto initialization
##############################################
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
prompt pure
##############################################
## setopt
##############################################
# Delete all duplicated raws at history
setopt hist_ignore_all_dups
# Record timestamp at history
setopt extended_history
# Record timestamp at history
setopt extended_history
# Delete previous duplicated command
setopt hist_ignore_dups
# Add command to history immediately when executed
setopt inc_append_history
