PROMPT_COMMAND='echo -ne "\033]0;\007"'

source ~/.git/git-completion.bash
source ~/.git/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
PS1='[\u@\h \W]$(__git_ps1 "[\[\033[32m\]%s\[\033[0m\]]")\$ '

eval "$(direnv hook bash)"

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

alias ssh=~/bin/ssh_chbg.sh

if [ -f ~/.alias ] ; then
. ~/.alias
fi
