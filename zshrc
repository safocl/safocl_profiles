# The following lines were added by compinstall
alias ls='ls --color=auto'

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' file-sort name
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' menu select=3
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/safff/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit
prompt adam2
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
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
