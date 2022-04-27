update-envs() {
  pyenv update
  nodenv update
  rbenv update
  git -C $GOENV_ROOT pull
  asdf update
  asdf plugin-update --all
  rustup update
}
