# Lines configured by zsh-newuser-install
autoload -U colors && colors
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/eric/.zshrc'

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
# export KEYTIMEOUT=1s

autoload -Uz compinit
compinit

#plugins

[ -f "~/Dotfiles/aliasses/aliasrc" ] && source "~/Dotfiles/aliasses/aliasrc"
# End of lines added by compinstall
