##############################################################################
#
#    DPPereyra's Personal ZSH config
#
##############################################################################

echo "Using generic locale ..."
export LC_ALL=en_PH.UTF-8

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
source $STATION_RC/s98_secrets.zsh

source $STATION_RC/s99_theme.zsh

clear
neofetch --ascii_distro $NEOFETCH_DISTRO
fortune | cowsay -f small | lolcat

