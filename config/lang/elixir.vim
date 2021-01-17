let s:language_server_dir = expand("${HOME}/workspace/elixir-lsp/elixir-ls/release")
" let s:language_server_path = s:language_server_dir . '/language_server.sh'

" if !exists('g:LanguageClient_serverCommands')
  " let g:LanguageClient_serverCommands = {}
" endif

" if !exists('g:LanguageClient_serverCommands.elixir')
  " let g:LanguageClient_serverCommands.elixir = []
" endif

" let g:LanguageClient_serverCommands.elixir += [s:language_server_path]

if !exists('g:ale_linters')
  let g:ale_linters = {}
endif

if !exists('g:ale_linters.elixir')
  let g:ale_linters.elixir = []
endif

let g:ale_linters.elixir += ['elixir-ls']

" Required, tell ALE where to find Elixir LS
let g:ale_elixir_elixir_ls_release = expand("${HOME}/workspace/elixir-lsp/elixir-ls/release")

" Optional, you can disable Dialyzer with this setting
let g:ale_elixir_elixir_ls_config = {'elixirLS': {'dialyzerEnabled': v:false}}

" Optional, configure as-you-type completions
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1
