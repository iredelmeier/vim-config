let g:deoplete#enable_at_startup=1
let g:deoplete#enable_smart_case=1

" Don't try to autocomplete quickfix or fuzzy finder
autocmd FileType qf let b:deoplete_disable_auto_complete = 1
autocmd FileType fzf let b:deoplete_disable_auto_complete = 1

" Close preview window after autocomplete
autocmd CompleteDone * silent! pclose!
