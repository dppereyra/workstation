##############################################################################
#
#    dppereyra's personal zsh config
#
#    zsh keybindings
#
##############################################################################

echo "Configuring key bindings ..."

bindkey -e

bindkey '^[[3~' delete-char

bindkey '^[[H'  beginning-of-line
# bindkey '^[[7~' beginning-of-line

bindkey '^[[F'  end-of-line
# bindkey '^[[8~' end-of-line
