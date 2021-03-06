#!/bin/bash

cd ~
## check & install Homebrew / install git
if test ! $(which brew); then
  echo '  Installing Homebrew.'
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew install git

## get dotfiles
if [ -e ~/dotfiles ]; then
  cd ~/dotfiles
  git pull origin master
  cd ~
else
  git clone git@github.com:NaturalHokke/dotfiles.git
fi

## Brewfile
# 使えなくなるので、何か代替手段を...
ln -sf ~/dotfiles/Brewfile ~/Brewfile
brew bundle

## Symlinks
for filename in $(ls . | grep -v bootstrap | grep -v README); do
  ln -sf ~/dotfiles/$filename ~/$filename
done
