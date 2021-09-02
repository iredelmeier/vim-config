set nocompatible

if exists("$VIRTUAL_ENV")
  let g:python3_host_prog=substitute(system("which -a python3 | head -n2 | tail -n1"), "\n", '', 'g')
else
  let g:python3_host_prog=substitute(system("which python3"), "\n", '', 'g')
endif
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
