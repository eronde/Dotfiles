# /etc/skel/.bashrc:
# $Header: /var/cvsroot/gentoo-x86/app-shells/bash/files/dot-bashrc,v 1.3 2005/07/06 22:10:22 vapier Exp $
# 
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]]; then
	# Shell is non-interactive.  Be done now
	return
fi

# Shell is interactive.  It is okay to produce output at this point,
# though this example doesn't produce any.  Do setup for
# command-line interactivity.

# colors for ls, etc.  Prefer ~/.dir_colors #6448
#if [[ -f ~/.dir_colors ]]; then
#	eval `dircolors -b ~/.dir_colors`
#else
#	eval `dircolors -b /etc/DIR_COLORS`
#fi
alias ls="ls --color=always"
alias d="ls --color=always -a"
alias v="ls -Fsv -l -a -h --color=always "
alias e='sudo paludis -i'
#alias es='sudo eix b'
#alias ep='sudo paludis -pi'
#alias eu='sudo paludis unmerge'
#alias edeep='sudo paludis -DNu'
#alias esync='sudo paludis --sync'
#alias ew='sudo paludis -i world'
alias p='sudo pacman -Suy' 
alias df='df -h'
alias grep="grep --color=auto"
alias unrar="unrar x"
alias ..="cd .."
# Change the window title of X terminals 
#case $TERM in
#	xterm*|rxvt*|Eterm)
#		PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
#		;;
#	screen)
#		PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\033\\"'
#		;;
#
#esac 
#
#PS1='[\u@\h \W]\$ ' #The arch default
#PS1="\[\033[0;32m\][\u@\h \w]$\[\033[0m\] "

#Tab-Completion in sudo and man
complete -cf sudo
complete -cf man


#--ENVIRONMENTAL VARIABLES--
export EDITOR="vim"

# ignore duplicates in bash history
export HISTCONTROL=ignoredups

export PATH=~eric/.gem/ruby/2.1.0/bin/:/home/eric/scripts/:$PATH

# append history from each terminal upon exit
shopt -s histappend

# make bash history ... HUGE!
HISTSIZE=100000




case ${TERM} in
    xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
        PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
        ;;
    screen)
        PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
        ;;
esac

# fortune is a simple program that displays a pseudorandom message
# from a database of quotations at logon and/or logout.
# If you wish to use it, please install "fortune-mod" from the
# official repositories, then uncomment the following line:

 [[ "$PS1" ]] && /usr/bin/fortune

# Set colorful PS1 only on colorful terminals.
# dircolors --print-database uses its own built-in database
# instead of using /etc/DIR_COLORS. Try to use the external file
# first to take advantage of user additions. Use internal bash
# globbing instead of external grep binary.

# sanitize TERM:
safe_term=${TERM//[^[:alnum:]]/?}
match_lhs=""

[[ -f ~/.dir_colors ]] && match_lhs="${match_lhs}$(<~/.dir_colors)"
[[ -f /etc/DIR_COLORS ]] && match_lhs="${match_lhs}$(</etc/DIR_COLORS)"
[[ -z ${match_lhs} ]] \
    && type -P dircolors >/dev/null \
    && match_lhs=$(dircolors --print-database)

if [[ $'\n'${match_lhs} == *$'\n'"TERM "${safe_term}* ]] ; then
    
    # we have colors :-)

    # Enable colors for ls, etc. Prefer ~/.dir_colors
    if type -P dircolors >/dev/null ; then
        if [[ -f ~/.dir_colors ]] ; then
            eval $(dircolors -b ~/.dir_colors)
        elif [[ -f /etc/DIR_COLORS ]] ; then
            eval $(dircolors -b /etc/DIR_COLORS)
        fi
    fi

    PS1="$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[01;32m\]\u@\h'; fi)\[\033[01;34m\] \w \$([[ \$? != 0 ]] && echo \"\[\033[01;31m\]:(\[\033[01;34m\] \")\\$\[\033[00m\] "

    # Use this other PS1 string if you want \W for root and \w for all other users:
    # PS1="$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h\[\033[01;34m\] \W'; else echo '\[\033[01;32m\]\u@\h\[\033[01;34m\] \w'; fi) \$([[ \$? != 0 ]] && echo \"\[\033[01;31m\]:(\[\033[01;34m\] \")\\$\[\033[00m\] "

    alias ls="ls --color=auto"
    alias dir="dir --color=auto"
    alias grep="grep --color=auto"
    alias dmesg='dmesg --color'

    # Uncomment the "Color" line in /etc/pacman.conf instead of uncommenting the following line...!

    # alias pacman="pacman --color=auto"

else

    # show root@ when we do not have colors

    PS1="\u@\h \w \$([[ \$? != 0 ]] && echo \":( \")\$ "

    # Use this other PS1 string if you want \W for root and \w for all other users:
    # PS1="\u@\h $(if [[ ${EUID} == 0 ]]; then echo '\W'; else echo '\w'; fi) \$([[ \$? != 0 ]] && echo \":( \")\$ "

fi

PS2="> "
PS3="> "
PS4="+ "

# Try to keep environment pollution down, EPA loves us.
unset safe_term match_lhs

# Try to enable the auto-completion (type: "pacman -S bash-completion" to install it).
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# Try to enable the "Command not found" hook ("pacman -S pkgfile" to install it).
# See also: https://wiki.archlinux.org/index.php/Bash#The_.22command_not_found.22_hook
[ -r /usr/share/doc/pkgfile/command-not-found.bash ] && . /usr/share/doc/pkgfile/command-not-found.bash

PERL_MB_OPT="--install_base \"/home/eric/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/eric/perl5"; export PERL_MM_OPT;

#virtualenv, pip install virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/project/python
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.7
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv
alias mkpro2="mkproject -p /usr/bin/python2"
alias mkpro3="mkproject -p /usr/bin/python3"
source /usr/bin/virtualenvwrapper.sh
export PULSE_LATENCY_MSEC=60

transfer() {
  local fname="$1"
  local FE="${fname##*.}"
  local MAX_DOWLOADS=${2:-1}
  local MAX_DAYS=${3:-5}

  # write to output to tmpfile because of progress bar
  tmpfile=$( mktemp -t transferXXX )
  local SCRAMBLEFN=/tmp/$(echo "$RANDOM $RANDOM $RANDOM $RANDOM $RANDOM" | sha512sum | cut -c -16).$FE
  echo $SCRAMBLEFN 
  cp $fname $SCRAMBLEFN;
  #curl -H "Max-Downloads: $MAX_DOWLOADS" -H "Max-Days: $MAX_DAYS" --upload-file $fname https://transfer.sh/$SCAMBLEFN >> $tmpfile;
  curl -H "Max-Downloads: $MAX_DOWLOADS" -H "Max-Days: $MAX_DAYS" --upload-file $SCRAMBLEFN https://transfer.sh/$(basename $SCRAMBLEFN) >> $tmpfile;
  cat $tmpfile;
  rm -f $tmpfile;
  rm -f $SCRAMBLEFN;
  echo
  echo "Removing files: $SCRAMBLEFN $tmpfile";
  echo
}

alias transfer=transfer

historyGrep() {
  local var="$1"
  if [[ -z "$var" ]]; then
    echo "Use hg [seachterm] to find something quickly in history"
  else
    history | grep "$var"
  fi
}
alias hg=historyGrep
#Powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh
