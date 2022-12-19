if !exists('g:coc_global_extensions')
  let g:coc_global_extensions = []
endif

let g:coc_global_extensions += ['coc-json', 'coc-git', 'coc-pairs', 'coc-webview']

if executable('fzf')
  let g:coc_global_extensions += ['coc-fzf-preview']
endif
