let g:rustfmt_autosave = 1
" let g:racer_experimental_completer = 1

let g:rust_fold = 1

" if executable('racer')
  " let g:racer_cmd = substitute(system('which racer'), '\n\+$', '', '')
  " let g:deoplete#sources#rust#racer_binary = g:racer_cmd

  " nmap gd <Plug>(rust-def)
" endif

" let g:deoplete#sources#rust#rust_source_path = substitute(system('rustc --print sysroot'), '\n\+$', '', '') . '/lib/rustlib/src/rust/src'

" call deoplete#custom#source('sources', {
      " \ 'rust': ['LanguageClient']
      " \})
if !exists('g:LanguageClient_serverCommands')
  let g:LanguageClient_serverCommands = {}
endif

if !exists('g:LanguageClient_serverCommands.rust')
  let g:LanguageClient_serverCommands.rust = []
endif

if executable('rust-analyzer')
  let g:LanguageClient_serverCommands.rust += ['rust-analyzer']
elseif executable('rls')
  let g:LanguageClient_serverCommands.rust += ['rls']
endif

" let test#rust#cargotest#options = "--all --no-fail-fast -- --nocapture"

let g:ale_rust_cargo_use_check = 1
let g:ale_rust_cargo_check_tests = 1
let g:ale_rust_cargo_use_clippy = executable('cargo-clippy')

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

if !exists('g:ale_linters')
  let g:ale_linters = {}
endif

if !exists('g:ale_linters.rust')
  let g:ale_linters.rust = []
endif

if executable('rust-analyzer')
  let g:ale_linters.rust += ['analyzer']
endif

if !exists('g:test#runner_commands')
  let g:test#runner_commands = []
endif

let g:test#runner_commands += ['CargoTest']
