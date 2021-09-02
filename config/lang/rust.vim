let g:rustfmt_autosave = 1

let g:rust_fold = 1

" tags
let g:tagbar_type_rust = {
  \ 'ctagstype' : 'rust',
  \ 'kinds' : [
      \'T:types,type definitions',
      \'f:functions,function definitions',
      \'g:enum,enumeration names',
      \'s:structure names',
      \'m:modules,module names',
      \'c:consts,static constants',
      \'t:traits,traits',
      \'i:impls,trait implementations',
  \]
  \}

if !exists('g:test#runner_commands')
  let g:test#runner_commands = []
endif

let g:test#runner_commands += ['CargoTest']

if !exists('g:coc_global_extensions')
  let g:coc_global_extensions = []
endif

let g:coc_global_extensions += ['coc-rust-analyzer']
