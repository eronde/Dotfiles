# Sample zshrc

ZPLUG_SUDO_PASSWORD=
ZPLUG_PROTOCOL=ssh

source $HOME/Dotfiles/zsh/zplug/init.zsh

zplug "b4b4r07/ultimate", as:theme
zplug 'b4b4r07/zplug-doctor', lazy:yes
zplug 'b4b4r07/zplug-cd', lazy:yes
zplug 'b4b4r07/zplug-rm', lazy:yes
zplug 'zsh-users/zsh-syntax-highlighting'
zplug 'zsh-users/zsh-history-substring-search'
zplug 'zsh-users/zsh-autosuggestions'

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
    echo
fi

zplug load

