call plug#begin('~/.vim/plugged')
  runtime! config/plugins.vim
  if filereadable(expand("$HOME/.vimrc.local.plugins"))
    source $HOME/.vimrc.local.plugins
  endif
call plug#end()
