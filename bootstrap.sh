#!/bin/sh

cd ~
## check & install Homebrew / install git
if test ! $(which brew) then
  echo '  Installing Homebrew.'
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew install git

## get dotfiles
git clone git@github.com:NaturalHokke/dotfiles.git

## Brewfile
# 使えなくなるので、何か代替手段を...
ln -sf ~/dotfiles/Brewfile ~/Brewfile
brew bundle

## Symlinks
for filename in $(ls . | grep -v bootstrap | grep -v README | grep -v default-gems); do
  ln -sf "~/dotfiles/${filename}" "~/${filename}"
done
ln -sf ~/dotfiles/default-gems ~/.rbenv/default-gems

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
apm star --install
