#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


complete -cf sudo

alias ls='ls --color=auto'

#LANG=en_US.UTF-8
#LC_TIME=ru_RU.UTF-8

PS1='\[\033[0;32m\]\h@\u\[\033[01;34m\] \W \[\033[01;32m\]\$\[\033[00m\] '
PS2='> '
PS3='> '
PS4='+ '

#case ${TERM} in
#  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
#    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
#
#    ;;
# screen)
#    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
#    ;;
#esac
#
#[ -r /usr/share/bash-completion/completion   ] && . /usr/share/bash-completion/completion

export VISUAL="vim"
