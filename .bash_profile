export ATOM_PATH=~/Applications
export PATH=/usr/local/sbin:/usr/local/bin:$PATH

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

source ~/.bashrc
