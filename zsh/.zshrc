# .zshrc

PS1='[%n@%m:%~]%70(l|
|)%# '

case $OSTYPE in
linux*)
    alias ls="ls --color -hp"
    ;;
*)
    alias ls="ls -hp"
    ;;
esac

case $TERM in
dumb)
    PROMPT="%#"
    ;;
*)
    PROMPT="[%(!.%S.)%n%x%(!.%s.)@%m:%~]%(?..%B%?%b)%70(l|
|)%B%#%b "
    ;;
esac

slashre=/; WORDCHARS=${WORDCHARS/$slashre}

# changing dirs
setopt auto_cd auto_pushd pushd_ignore_dups
# completion
setopt no_auto_menu no_list_beep
# globbing
setopt extended_glob
# history
setopt bang_hist hist_verify
setopt share_history inc_append_history extended_history
setopt hist_ignore_all_dups hist_no_store hist_reduce_blanks
# input/output
setopt correct correct_all
# job control
setopt  notify
# zle
setopt no_beep

autoload -U compinit
compinit

case $TERM in
    xterm*|Eterm*|rxvt*)
        function precmd { print -nP "\033]2;[zsh@%m:%~]%#\007\033]1;[%m:%~]%#\007" }
        function preexec { local s=${2//\\/\\\\}; print -nP "\033]2;[zsh@%m:%~]%# $s\007\033]1;[%m:%~]%# $s\007" }
    ;;
esac

export PYTHONSTARTUP=$HOME/.pythonstartup

bindkey -e

cdpath=~/Projects

# workaround: compinit + precmd result in no-interpretation of special characters
echo
