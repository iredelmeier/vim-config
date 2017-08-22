set nocompatible

runtime! Plug.vim

runtime! config/editor.vim
runtime! config/colors.vim
runtime! config/bindings.vim

runtime! config/plugins/*.vim
runtime! config/lang/*.vim

source ${HOME}/.vimrc.local
