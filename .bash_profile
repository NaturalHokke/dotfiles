source ~/.bashrc

export ATOM_PATH=~/Applications
export PATH=/usr/local/sbin:/usr/local/bin:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH
# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
