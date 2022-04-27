station-edit() {
  case "$1" in
    *)
      TARGET=$STATION_HOME/config
  esac
  $EDITOR $TARGET
}
