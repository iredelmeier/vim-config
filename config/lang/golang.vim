" vim-go setup
let g:go_fmt_autosave = 1
let g:go_fmt_command = 'goimports'
let g:go_fmt_fail_silently = 1

let g:go_highlight_build_constraints = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

let g:ale_go_gometalinter_options =
  \ '--tests ' .
  \ '--fast ' .
  \ '--exclude="should have comment" ' .
  \ '--exclude="error return value not checked \(defer"'

let test#go#ginkgo#options = '-race -r -p -randomizeAllSpecs -randomizeSuites'
let test#go#gotest#options = '-race'

if executable("ginkgo")
  let test#go#runner = 'ginkgo'
  " let g:go_test_cmd = 'ginkgo -race -r -p --randomizeAllSpecs --randomizeSuites %:h'
else
  " let g:go_test_cmd = 'go test -race %'
endif

" autocmd FileType go let b:dispatch = g:go_test_cmd
