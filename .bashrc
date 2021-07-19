source ~/.shell/interactive

complete -cf sudo
source /usr/share/doc/pkgfile/command-not-found.bash
source /usr/share/bash-completion/bash_completion

# игнорирование регистра
bind 'set completion-ignore-case on'

#shopt -s nocaseglob
shopt -s checkwinsize

#PS1='\[\033[0;32m\]\h@\u\[\033[01;34m\] \W \[\033[01;32m\]\$\[\033[00m\] '
#export PS1="\$(awk '/MemFree/{print \$2}' /proc/meminfo) prompt > "



####################  скрипт приглашения командной строки
___pwd_color="\[$(tput setaf 3)\]"
___tire_color="\[$(tput setaf 2)\]"
___reset_color="\[$(tput sgr0)\]"
___save_pos="\[$(tput sc)\]"
___restore_pos="\[$(tput rc)\]"
___bold="\[$(tput bold)\]"


___prepwd=',-('


___tirefc()
{   
    local ___pwd=${PWD}
    if [[ $___pwd = $HOME ]]
    then
            ___pwd='~'
    else
            ___pwd=${___pwd##*/}
    fi
    local ___tire=')'
    #u_columns=$COLUMNS
    u_columns=$(( $COLUMNS - ${#___pwd} - ${#___prepwd} - 1 ))
    while  [[ $u_columns > 0 ]]
    do
        ___tire=${___tire}'-'
        (( u_columns-- ))
    done
    printf "%s" ${___tire}
}

#___apostrof()
#{
#        printf "%s" '|'
#}
#export PS1='\[$(tput sc;tput setaf 2;___prepwdfc;tput setaf 3;___pwdfc;tput setaf 2;___tirefc;tput sgr0;tput rc)\]'$'\n'"$___tire_color -> $___reset_color "
PS1="${___save_pos}${___tire_color}${___prepwd}${___pwd_color}${___bold}\W${___reset_color}${___tire_color}\$(___tirefc)${___restore_pos}\n${___tire_color}\\\`--${___reset_color}${___bold}>$___reset_color "
PS2='> '
PS3='> '
PS4='+ '
#################################################################################3

#########################  исправление наложения строк
function prompt_command {
	# get cursor position and add new line if we're not in first column
	#exec < /dev/tty
	#local OLDSTTY=$(stty -g)
	#stty raw -echo min 0
	echo -en "\033[6n" && read -sdR CURPOS
	#stty $OLDSTTY
	[[ ${CURPOS##*;} -gt 1 ]] && echo ""
}
PROMPT_COMMAND=prompt_command
######################################################################
