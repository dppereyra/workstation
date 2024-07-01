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
# export TERM="xterm-256color"
# export ZSH_DISABLE_COMPFIX=true

export HISTFILE=~/station/zsh_history
export HISTSIZE=200000
export SAVEHIST=100000

export VAGRANT_DEFAULT_PROVIDER=libvirt
export PYTHONWARNINGS="ignore:Unverified HTTPS request"

export ZINIT_HOME="~/station/zinit"

if [[ ! -f $STATION_RC/s98_secrets.zsh ]]
then
  cp $STATION_RC/s98_secrets.sample.zsh $STATION_RC/s98_secrets.zsh
fi

source $STATION_RC/s98_secrets.zsh
