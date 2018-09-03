let g:airline_theme='hybrid'
let g:airline_symbols_ascii = 1

let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

if !exists('g:airline_extensions')
  let g:airline_extensions = []
endif

for extension in ['branch', 'netrw', 'tabline', 'quickfix']
  let g:airline_extensions += [extension]
endfor
