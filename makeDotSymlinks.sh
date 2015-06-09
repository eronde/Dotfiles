#!/bin/sh   
DOTDIR=~/Dotfiles
DOTDIR_OLD=~/Dotfiles_OLD
DOTFILES="bashrc vim vimrc"
NOW=$(date +%d%m%y%H%M%S)

mkdir -vp $DOTDIR
mkdir -vp $DOTDIR_OLD

for FILE in $DOTFILES ; do
  if [[ -e ~/.$FILE ]]; then
    echo "Moving old ~./$FILE to $DOTDIR_OLD/"
    mv -v  ~/.$FILE $DOTDIR_OLD/$FILE\_$NOW
  fi
  echo "Symlinking $DOTDIR/$FILE"
  ln -vs $DOTDIR/$FILE ~/.$FILE
done

