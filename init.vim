set nocompatible

" if filereadable(expand("$HOME/.vim/venv/bin/python3"))
  " let g:python3_host_prog=expand("$HOME/.vim/venv/bin/python3")
" endif

runtime! Plug.vim

runtime! config/editor.vim
runtime! config/colors.vim
runtime! config/bindings.vim

runtime! config/plugins/*.vim
runtime! config/lang/*.vim

if filereadable(expand("$HOME/.vimrc.local"))
  source ${HOME}/.vimrc.local
endif
