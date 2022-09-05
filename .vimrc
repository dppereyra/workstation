set showcmd
set ruler
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab
set textwidth=100
set colorcolumn=+1
set number
set numberwidth=5
set nowrap

colo blue
syntax on

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'valloric/youcompleteme'
Plugin 'davidhalter/jedi-vim'
Plugin 'hdima/python-syntax'
Plugin 'hashivim/vim-terraform'
Plugin 'juliosueiras/vim-terraform-completion'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'mattn/emmet-vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'elzr/vim-json'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jparise/vim-graphql'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'chriskempson/base16-vim'

call vundle#end()

