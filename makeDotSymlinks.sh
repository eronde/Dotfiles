#!/bin/sh   
DOTDIR=~/Dotfiles
DOTDIR_OLD=~/Dotfiles_OLD
DOTFILES="bashrc vim vim/vimrc tmux.conf"

CONFIGDIR=~/.conf
CONFIGFILES="nvim"
CONFIGFILES_OLD=~/config_old
NOW=$(date +%d%m%y%H%M%S)

mkdir -vp $DOTDIR
mkdir -vp $DOTDIR_OLD
mkdir -vp $CONFIGFILES_OLD

#Dotfiles
for FILE in $DOTFILES ; do
  if [ -e ~/.$FILE ]; then
    echo "Moving old ~./$FILE to $DOTDIR_OLD/"
    mv -v  ~/.$FILE $DOTDIR_OLD/$FILE\_$NOW
  fi
  echo "Symlinking $DOTDIR/$FILE"
  ln -vs $DOTDIR/$FILE ~/.$FILE
done

#Dotfiles
for FILE in $CONFIGFILES ; do
  if [ -e ~/$CONFIGDIR/$FILE ]; then
    echo "Moving old ~./$CONFIGDIR/$FILE to $CONFIGFILES_OLD/"
    mv -v  ~/$CONFIGFILES/$FILE $CONFIGFILES_OLD/$FILE\_$NOW
  fi
  echo "Symlinking $DOTDIR/$FILE"
  ln -vs $DOTDIR/$FILE ~/$CONFIGDIR/$FILE
done

