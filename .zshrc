##############################################################################
#
#    DPPereyra's Personal ZSH config
#
##############################################################################

echo "Using generic locale ..."
export STATION_HOME=~/station
export STATION_RC=$STATION_HOME/runcom

source $STATION_RC/s01_options.zsh
source $STATION_RC/s02_keybindings.zsh
source $STATION_RC/s03_variables.zsh
source $STATION_RC/s04_paths.zsh
source $STATION_RC/s05_os.zsh
source $STATION_RC/s06_function_loader.zsh
source $STATION_RC/s07_terminal.zsh
source $STATION_RC/s08_aliases.zsh
source $STATION_RC/s09_completions.zsh
source $STATION_RC/s10_zinit.zsh
source $STATION_RC/s99_theme.zsh

if [[ -v NEOFETCH_DISTRO ]]
then
  neofetch --ascii_distro $NEOFETCH_DISTRO
else
  neofetch
fi

fortune | cowsay -f small

# eval "$(atuin init zsh)"
