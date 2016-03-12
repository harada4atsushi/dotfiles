PROMPT_COMMAND='echo -ne "\033]0;\007"'

source ~/dotfiles/bin/git-completion.bash
source ~/dotfiles/bin/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=true
PS1='[\u@\h \W] \360\237\215\243  $(__git_ps1 "[\[\033[32m\]%s\[\033[0m\]]")'
#PS1='[\u@\h \W] $(__git_ps1 "[\[\033[32m\]%s\[\033[0m\]]")\$ '

export PGDATA=/usr/local/var/postgres

alias ssh=~/bin/ssh_chbg.sh

if [ -f ~/.alias ] ; then
. ~/.alias
fi

# brewコマンドが存在する場合
if type brew > /dev/null 2>&1; then
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion

  fi
fi

# direnvが存在する場合
if type direnv > /dev/null 2>&1; then
  eval "$(direnv hook bash)"
fi

# tmuxセッションがなければtmuxを起動する
if [ -z $TMUX ]; then
  if $(tmux has-session); then
    tmux attach
  else
    tmux
  fi
fi
