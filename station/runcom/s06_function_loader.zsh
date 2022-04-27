##############################################################################
#
#    dppereyra's personal zsh config
#
#    zsh function loader
#
##############################################################################

echo "Loading functions ..."
for script_file in $STATION_RC/functions/*.zsh; do
    echo "Loading $script_file"
    source $script_file
done
