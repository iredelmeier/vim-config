let g:ale_sign_error = '✘'
let g:ale_sign_warning = '➤'
let g:ale_sign_info = '➟'
let g:ale_sign_column_always = 1

if !exists('g:airline_extensions')
  let g:airline_extensions = []
endif

let g:airline_extensions += ['ale']
