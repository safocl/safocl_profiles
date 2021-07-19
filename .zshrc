source /usr/share/doc/pkgfile/command-not-found.zsh
source ~/.shell/interactive

zstyle ':completion:*' use-cache true
zstyle ':completion:*' cache-path $HOME/.zsh/cache

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' file-sort name
zstyle ':completion:*' group-name ''

zstyle ':completion:*' list-colors ''
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'

zstyle ':completion:*' menu select=3
#zstyle ':completion:*' menu select=long-list select=0

zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' rehash true
zstyle :compinstall filename '/home/safff/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit
prompt adam2

autoload -Uz add-zsh-hook

function xterm_title_precmd () {
	print -Pn '\e]2;%n@%m %1~\a'
}

function xterm_title_preexec () {
	print -Pn '\e]2;%n@%m %1~ %# '
	print -n "${(q)1}\a"
}

if [[ "$TERM" == (screen*|xterm*|rxvt*) ]]; then
   add-zsh-hook -Uz precmd xterm_title_precmd
   add-zsh-hook -Uz preexec xterm_title_preexec
fi

########удаление глюков оболочки после ввода спец символов############
_echoti() {
    emulate -L zsh
    (( ${+terminfo[$1]} )) && echoti $1
}
term_reset() {
    emulate -L zsh
    [[ -n $TTY ]] && (( $+terminfo )) && {
        _echoti rmacs  # Отключает графический режим
        _echoti sgr0   # Убирает цвет
        _echoti cnorm  # Показывает курсор
        _echoti smkx   # Включает «keyboard transmit mode»
        echo -n $'\e[?47l' # Отключает alternate screen
       # See https://github.com/fish-shell/fish-shell/issues/2139 for smkx
    }
}
zmodload zsh/terminfo && precmd_functions+=( term_reset )

ttyctl -f
############################################################################

######## оповещение при окончании действия ###############
precmd() { echo -ne '\a' }
#######################################################

# End of lines configured by zsh-newuser-install
bindkey "[6~" down-line-or-search
bindkey "^[OC" forward-char
bindkey "^[OD" backward-char
bindkey "^[OF" end-of-line
bindkey "^[OH" beginning-of-line
bindkey "[7~" beginning-of-line
bindkey "[3~" delete-char
bindkey "[8~" end-of-line
bindkey "OA" up-line-or-history
bindkey "OB" down-line-or-history
bindkey "^?" backward-delete-char

setopt hist_ignore_dups
setopt completealiases
