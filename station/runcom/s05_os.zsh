##############################################################################
#
#    dppereyra's personal zsh config
#
#    os specific configs
#
##############################################################################

echo "Determining os ..."

if [[ "$OSTYPE" == *"darwin"* ]]
then
  source $STATION_RC/system/apple.zsh
elif [[ "$OSTYPE" == *"linux-gnu"* || "$OSTYPE" == *"fc"* ]]
then

  STATION_KERNEL=$(uname -a | awk '{print $3}' | tr '[:upper:]' '[:lower:]')
  STATION_DISTRO=$(awk -F= '/^NAME/{print $2}' /etc/os-release | tr '[:upper:]' '[:lower:]')

  if [[ "$STATION_KERNEL" == *wsl2* ]]
  then
    source $STATION_RC/system/wsl.zsh
  fi

  case "$STATION_DISTRO" in
    *arch*)
      echo "Loading arch specific configs ..."
      source $STATION_RC/system/distro/arch.zsh
    ;;
    *arcolinux*)
      echo "Loading arch specific configs ..."
      source $STATION_RC/system/distro/arch.zsh
    ;;
    *endeavouros*)
      echo "Loading endeavour specific configs ..."
      source $STATION_RC/system/distro/arch.zsh
    ;;
    *debian*)
      echo "Loading debian specific configs ..."
      source $STATION_RC/system/distro/debian.zsh
    ;;
    *fedora*)
      echo "Loading fedora specific configs ..."
      source $STATION_RC/system/distro/fedora.zsh
    ;;
    *)
      echo "No OS specific configs loaded ..."
      ;;
  esac
fi

touch $STATION_RC/s98_secrets.zsh
