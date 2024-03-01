##############################################################################
#
#    dppereyra's personal zsh config
#
#    zsh variables
#
##############################################################################

echo "Loading environment variables ..."

export DOTNET_CLI_TELEMETRY_OPTOUT=1

# export EDITOR=vim

export HISTFILE=~/station/zsh_history
export HISTSIZE=1000000
export SAVEHIST=1000000

# export TERM="xterm-256color"

# export ZSH_DISABLE_COMPFIX=true

export VAGRANT_DEFAULT_PROVIDER=libvirt

export ZINIT_HOME=~/station/zinit

if [[ ! -f $STATION_RC/s98_secrets.zsh ]]
then
  cp $STATION_RC/s98_secrets.sample.zsh $STATION_RC/s98_secrets.zsh
fi

source $STATION_RC/s98_secrets.zsh
