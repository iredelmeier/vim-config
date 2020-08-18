if !exists('g:ale_linters')
  let g:ale_linters = {}
endif

let g:ale_linters.elixir = ['elixir-ls']

" Required, tell ALE where to find Elixir LS
let g:ale_elixir_elixir_ls_release = expand("${HOME}/workspace/elixir-lsp/elixir-ls/rel")

" Optional, you can disable Dialyzer with this setting
let g:ale_elixir_elixir_ls_config = {'elixirLS': {'dialyzerEnabled': v:false}}

" Optional, configure as-you-type completions
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1
