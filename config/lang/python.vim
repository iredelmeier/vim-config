if !exists('g:ale_fixers')
  let g:ale_fixers = []
endif

if !exists('g:ale_fixers.python')
  let g:ale_fixers.python = []
endif

if executable('black')
  let g:ale_fixers.python += ['black']
endif

if executable('autopep8')
  let g:ale_fixers.python += ['autopep8']
endif

" let g:rustfmt_autosave=1
" let g:racer_cmd=substitute(system('which racer'), '\n\+$', '', '')
" let g:racer_experimental_completer=1

" let g:rust_fold=1

" let g:deoplete#sources#rust#racer_binary=g:racer_cmd
" let g:deoplete#sources#rust#rust_source_path=substitute(system('rustc --print sysroot'), '\n\+$', '', '') . '/lib/rustlib/src/rust/src'

" let test#rust#cargotest#options = "--all --no-fail-fast"

" let g:ale_rust_cargo_use_check=1
" let g:ale_rust_cargo_check_tests=1

" " tags
" let g:tagbar_type_rust = {
  " \ 'ctagstype' : 'rust',
  " \ 'kinds' : [
      " \'T:types,type definitions',
      " \'f:functions,function definitions',
      " \'g:enum,enumeration names',
      " \'s:structure names',
      " \'m:modules,module names',
      " \'c:consts,static constants',
      " \'t:traits,traits',
      " \'i:impls,trait implementations',
  " \]
  " \}

" if !exists('g:ale_linters')
  " let g:ale_linters = {}
" endif

" if executable('rls')
  " let g:ale_linters.rust = ['rls']

  " if !exists('g:LanguageClient_serverCommands')
    " let g:LanguageClient_serverCommands = {}
  " endif

  " let g:LanguageClient_serverCommands.rust = ['rls']
" else
  " let g:ale_linters.rust = ['cargo']
" endif

" if !exists('g:test#runner_commands')
  " let g:test#runner_commands = []
" endif

" let g:test#runner_commands += ['CargoTest']
