# Station Dotfiles Unified configuration

This is a repository of all my dotfiles and configs

## Setup

```bash
git clone --bare $REPO_URL $HOME/.station
alias mystation='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
mystation checkout
```

## Installing all the environments

You can find quick install scripts in the `./station/scripts/setup` directory
