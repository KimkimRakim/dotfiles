##############################################
## Plugin Installation
###############################################
source ~/.zplug/init.zsh
## zplug
zplug "b4b4r07/enhancd", use:init.sh

if ! zplug check --verbose; then
 printf "Install? [y/N]: "
   if read -q; then
     ¦ echo; zplug install
       fi
       fi
       zplug load --verbose

##############################################
## zprezto initialization
##############################################
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
prompt pure
prompt_pure_username=%F{240}LOCAL

##############################################
## zplug setting
###############################################
#enhancd
source ~/.zplug/repos/b4b4r07/enhancd/init.sh
export ENHANCD_DISABLE_DOT=1

###############################################
## fzf setting
###############################################
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh ]

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

