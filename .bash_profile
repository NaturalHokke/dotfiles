# PATH reset
if [ -z "$INIT_PATH" ]; then
  export INIT_PATH=$PATH
else
  export PATH=$INIT_PATH
fi

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

source ~/.bashrc
