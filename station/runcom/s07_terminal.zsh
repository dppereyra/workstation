##############################################################################
#
#    dppereyra's personal zsh config
#
#    zsh zinit, compinit, bash compatibilities
#
##############################################################################

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    echo "Load vte (tilix) terminal fixes ..."
    source /etc/profile.d/vte.sh
fi

echo "Load terminal utilities ..."
source $STATION_HOME/zinit/zinit.zsh
autoload -Uz compinit
autoload -Uz _zinit
compinit -u
(( ${+_comps} )) && _comps[zinit]=_zinit

echo "Load bash compatibility ..."
autoload bashcompinit
bashcompinit
