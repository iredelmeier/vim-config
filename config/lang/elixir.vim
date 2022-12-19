if executable('elixir') && executable('mix')
  if !exists('g:coc_global_extensions')
    let g:coc_global_extensions = []
  endif

  let g:coc_global_extensions += ['coc-elixir']
endif
