update-vagrant-boxes() {
  vagrant box outdated --global \
    | grep outdated \
    | awk '{print $2;}' \
    | xargs vagrant box update --box
  vagrant box prune
}
