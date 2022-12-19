""""""""""""""
""" Navigation
""""""""""""""

" Better file/directory navigation
Plug 'scrooloose/nerdtree'

" Awesome fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

""""""""""""""""
""" Colorschemes
""""""""""""""""

Plug 'w0ng/vim-hybrid'

"""""""""""
""" Display
"""""""""""

" Better status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"""""""""""
""" Editing
"""""""""""

" Comments!
Plug 'scrooloose/nerdcommenter'
" Add/remove/change text surroundings
Plug 'tpope/vim-surround'
" Better command repetition
Plug 'tpope/vim-repeat'
" Closes brackets
" Plug 'jiangmiao/auto-pairs'
" Shows and removes extra whitespace
Plug 'ntpeters/vim-better-whitespace'
" Pairs of mappings
Plug 'tpope/vim-unimpaired'
" Multiple cursors
" Plug 'terryma/vim-multiple-cursors'
" Includes words within camelcase word
Plug 'bkad/CamelCaseMotion'
" +/- to expand or shrink region
" Plug 'terryma/vim-expand-region'
" View tags
Plug 'majutsushi/tagbar'
" Undo tree
Plug 'simnalamburt/vim-mundo'
" Automatically closes certain structures
Plug 'tpope/vim-endwise'
" Auto-align table text
Plug 'godlygeek/tabular'
" All the things!!!
Plug 'neoclide/coc.nvim', {'branch': 'release'}

""""""""""
""" Search
""""""""""

" Update variants of a word
Plug 'tpope/vim-abolish'
" Multi-file search-and-replace
Plug 'wincent/ferret'
" Better search
Plug 'mileszs/ack.vim'

"""""""""""""""
""" Integration
"""""""""""""""

" Unix commands
Plug 'tpope/vim-eunuch'
" Git wrapper
Plug 'tpope/vim-fugitive'
" Shows diffs in side column
Plug 'airblade/vim-gitgutter'
" Async commands
Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'
" Tmux integration
Plug 'christoomey/vim-tmux-navigator'
" Test all the things
Plug 'janko-m/vim-test'

"""""""""""""
""" Languages
"""""""""""""

" Rust
Plug 'rust-lang/rust.vim', { 'for': 'rust' }

" Golang
" Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoInstallBinaries' }

" Protobuf
Plug 'uarun/vim-protobuf', { 'for': 'proto' }

" Ruby
Plug 'tpope/vim-bundler', { 'for': ['ruby', 'rake'] }
Plug 'ecomba/vim-ruby-refactoring', { 'for': ['ruby', 'rake'], 'branch': 'main' }

" JavaScript
Plug 'pangloss/vim-javascript', { 'for': ['javascript'] }
Plug 'leafgarland/typescript-vim', { 'for': ['typescript'] }

" Pug
Plug 'digitaltoad/vim-pug', { 'for': ['pug'] }

" Sass/SCSS
Plug 'cakebaker/scss-syntax.vim'

" Python
Plug 'Vimjas/vim-python-pep8-indent', { 'for': ['python'] }

" Elixir
Plug 'elixir-editors/vim-elixir', { 'for': ['elixir'] }
Plug 'elixir-lsp/coc-elixir', { 'do': 'yarn install && yarn prepack', 'for': ['elixir'] }

" Terraform
Plug 'hashivim/vim-terraform', { 'for': ['tf', 'hcl', 'json'] }
