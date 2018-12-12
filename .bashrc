# bash-completion
if [ type brew > /dev/null 2>&1 ] && [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# default editor
alias vim='nvim'
export EDITOR=vim
export XDG_CONFIG_HOME=$HOME/.config

# ls color
alias ls='ls -Gla'
export LSCOLORS=gxfxcxdxbxegebadagacad

# command history
export HISTFILE=$HOME/.histories/.bash_history
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=1000
export HISTFILESIZE=1000
export MYSQL_HISTFILE=$HOME/.histories/.mysql_history

# prompt setting
__rbenv_ps1 ()
{
  rbenv_ruby_version=`rbenv version | sed -e 's/ .*//'`
  printf $rbenv_ruby_version
}

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWCOLORHINTS=1
export PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME%%.*}:${PWD/$HOME/~}\007";export OLD_STATUS=$?'
DATE='\[\033[32m\]\D{%F %T}\[\033[00m\]'
RUBY='\[\033[33m\](ruby:`__rbenv_ps1`)\[\033[00m\]'
DIR='\[\033[34m\]\w\[\033[00m\]'
GIT='\[\033[31m\]$(__git_ps1 " (%s)")\[\033[00m\]'
# EMOJI
BEERMUG='\xF0\x9F\x8D\xBA'
SKULL='\xF0\x9F\x92\x80'
RSLT='`if [ $OLD_STATUS = 0 ]; then echo -e ${BEERMUG}; else echo -e ${SKULL}; fi`'

PS1="${DATE} ${RUBY} : ${DIR}${GIT} ${RSLT}\n$ "

# direnv
eval "$(direnv hook bash)"
