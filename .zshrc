##############################################
## Plugin Installation
###############################################
source ~/.zplug/init.zsh
## zplug
zplug "b4b4r07/enhancd", use:init.sh
zplug "zsh-users/zsh-syntax-highlighting", defer:2
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
export EDITOR='vim' # nanoからvimに変更
export VISUAL='vim' # nanoからvimに変更

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

##############################################
## alias
##############################################
# basic
alias reload='source ~/.zshrc'
alias la='ls -al'
alias mkdir='mkdir -p'
alias .='cd'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
# terraform
alias tw='terraform workspace'
alias tp='terraform plan'
alias ta='terraform apply'
alias ti='terraform init'
# gcloud
alias gcl='gcloud config list'
alias gi='gcloud init'
# kubectl
alias kuget='kubectl get'
alias kudesc='kubectl describe'
alias kuexec='kubectl exec -it'
alias kuapply='kubectl apply -f'
# tmux
alias tmnew='tmux new -s'
alias tma='tmux a -t'
# local setting
[ -f ~/.alias ] && source ~/.alias
