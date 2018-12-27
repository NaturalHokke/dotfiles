# bash-completion
if type brew > /dev/null 2>&1 && [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# default editor
alias vim="nvim"
export EDITOR="vim"

# XDG Base Directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export PSQLRC="$XDG_CONFIG_HOME/pg/psqlrc"
export PGPASSFILE="$XDG_CONFIG_HOME/pg/pgpass"
export PGSERVICEFILE="$XDG_CONFIG_HOME/pg/pg_service.conf"
export PSQL_HISTORY="$XDG_DATA_HOME/pg/history"
export HISTFILE="$XDG_DATA_HOME/bash/history"
export MYSQL_HISTFILE="$XDG_DATA_HOME/mysql/history"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node/history"
export GEM_HOME="$XDG_DATA_HOME/gem"
export GEM_SPEC_CACHE="$XDG_CACHE_HOME/gem"
export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME/bundle"
export BUNDLE_USER_CACHE="$XDG_CACHE_HOME/bundle"
export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME/bundle"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME/android"
export VAGRANT_HOME="$XDG_DATA_HOME/vagrant"

# ls color
alias ls="ls -Gla"
export LSCOLORS="gxfxcxdxbxegebadagacad"

# command history
export HISTCONTROL="ignoreboth:erasedups"
export HISTSIZE=1000
export HISTFILESIZE=1000

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
