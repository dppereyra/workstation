##############################################################################
#
#    dppereyra's personal zsh config
#
#    zsh options
#
##############################################################################

echo "Configuring zsh options ..."

setopt INC_APPEND_HISTORY SHARE_HISTORY
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt MENUCOMPLETE
# setopt ALL_EXPORT

setopt globdots pushdtohome cdablevars autolist noautocd
setopt recexact longlistjobs
setopt autoresume histignoredups pushdsilent nomatch
setopt autopushd pushdminus extendedglob rcquotes mailwarning

unsetopt bgnice autoparamslash beep notify

autoload colors zsh/terminfo

autoload -U history-search-end
autoload -U is-at-least

zmodload -a zsh/stat stat
zmodload -a zsh/zpty zpty
zmodload -a zsh/zprof zprof
# zmodload -ap zsh/mapfile mapfile

zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
