let g:rustfmt_autosave=1
let g:racer_cmd=substitute(system('which racer'), '\n\+$', '', '')
let g:racer_experimental_completer=1

let g:rust_fold=1

let g:deoplete#sources#rust#racer_binary=g:racer_cmd
let g:deoplete#sources#rust#rust_source_path=substitute(system('rustc --print sysroot'), '\n\+$', '', '') . '/lib/rustlib/src/rust/src'

autocmd FileType rust let b:dispatch = 'cargo test --all --no-fail-fast -- --nocapture'

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
