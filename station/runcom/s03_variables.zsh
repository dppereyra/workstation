##############################################################################
#
#    dppereyra's personal zsh config
#
#    zsh variables
#
##############################################################################

echo "Loading environment variables ..."

export DOTNET_CLI_TELEMETRY_OPTOUT=1

export EDITOR=subl

export HISTFILE=~/station/zsh_history
export HISTSIZE=1000000
export SAVEHIST=1000000

export TERM="xterm-256color"

export ZSH_DISABLE_COMPFIX=true

export VAGRANT_DEFAULT_PROVIDER=libvirt

#Adding this temporarily until google sdk is compatible with 3.10
# export CLOUDSDK_PYTHON=/bin/python2

export RESTIC_REPOSITORY=rclone:backup:dpp-backups/homestation

export ZINIT_HOME=~/station/zinit
