export EDITOR="vim"
export VISUAL="vim"

# reed's laziness spreading
alias c="clear"
alias l="c;ls -lh"
alias ll="c;ls -alh"

function cd {
  [ -z "$*" ] && builtin cd ||  builtin cd "$*"; l
}

function cdg {
  GIT_ROOT_DIR="$(git rev-parse --show-toplevel)"
  [ -z "$GIT_ROOT_DIR" ] || cd "$GIT_ROOT_DIR"
}

alias ..='cd ..'
alias sbc='source ~/.bashrc'
alias e='exit'
alias gb='c;git branch'
alias gs='c;git status'
alias ga='git add .;gs'

function gc {
  git commit -m "$*"
}

alias gr='git reset'
alias dh='git diff HEAD'

alias ds='c;docker ps -a'
alias xc='clipcopy'
alias xv='clippaste'

alias r='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

alias k=kubectl
complete -F __start_kubectl k
