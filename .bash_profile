# PATH reset
if [ -z "$INIT_PATH" ]; then
  export INIT_PATH=$PATH
else
  export PATH=$INIT_PATH
fi

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

source ~/.bashrc
