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

  if !exists('g:test#runner_commands')
    let g:test#runner_commands = []
  endif

  let g:test#runner_commands += ['Ginkgo']
endif

if !exists('g:ale_linters')
  let g:ale_linters = {}
endif

let g:ale_linters.go = ['go build', 'gofmt', 'gometalinter']
