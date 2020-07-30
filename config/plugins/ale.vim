let g:ale_sign_error = '✘'
let g:ale_sign_warning = '➤'
let g:ale_sign_info = '➟'
let g:ale_sign_column_always = 1

if !exists('g:airline_extensions')
  let g:airline_extensions = []
endif

let g:airline_extensions += ['ale']

" For use with Language Server Protocol
let g:ale_completion_enabled = 1

let g:ale_fix_on_save = 1
