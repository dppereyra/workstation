##############################################################################
#
#    dppereyra's personal zsh config
#
#    zsh keybindings
#
##############################################################################

echo "Configuring key bindings ..."

bindkey -e
# bindkey -v

# This is the delete key for most cases
bindkey '^[[3~' delete-char

if [ "$TERM_PROGRAM" = tmux ]; then
  echo "Detected tmux session ..."
  echo "Setting keybindings for tmux ..."
  bindkey '^[[1~' beginning-of-line
  bindkey '^[[4~' end-of-line
else
  bindkey '^[[H' beginning-of-line
  bindkey '^[[F' end-of-line
fi

# This is the home key for most terminals
# bindkey '^[[H'  beginning-of-line

# This is the home key for most tmux setups
# bindkey '^[[1~' beginning-of-line

# This is the end key for most terminals
# bindkey '^[[F'  end-of-line

# This is the end key for most tmux setups
# bindkey '^[[4~' end-of-line

# Use vim keys in tab complete menu:
# bindkey -v '^?' backward-delete-char
# bindkey -M menuselect 'h' vi-backward-char
# bindkey -M menuselect 'k' vi-up-line-or-history
# bindkey -M menuselect 'l' vi-forward-char
# bindkey -M menuselect 'j' vi-down-line-or-history

# Change cursor shape for different vi modes.
# function zle-keymap-select {
#   if [[ ${KEYMAP} == vicmd ]] ||
#      [[ $1 = 'block' ]]; then
#     echo -ne '\e[1 q'
#   elif [[ ${KEYMAP} == main ]] ||
#        [[ ${KEYMAP} == viins ]] ||
#        [[ ${KEYMAP} = '' ]] ||
#        [[ $1 = 'beam' ]]; then
#     echo -ne '\e[5 q'
#   fi
# }
# zle -N zle-keymap-select
# zle-line-init() {
#     zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
#     echo -ne "\e[5 q"
# }
# zle -N zle-line-init
# echo -ne '\e[5 q' # Use beam shape cursor on startup.
# preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.
