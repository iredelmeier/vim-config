set nocompatible

runtime! Plug.vim

runtime! config/editor.vim
runtime! config/colors.vim
runtime! config/bindings.vim

runtime! config/plugins/*.vim
runtime! config/lang/*.vim

if filereadable(expand("$HOME/.vimrc.local"))
  source ${HOME}/.vimrc.local
endif
