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
Plug 'jiangmiao/auto-pairs'
" Shows and removes extra whitespace
Plug 'ntpeters/vim-better-whitespace'
" Pairs of mappings
Plug 'tpope/vim-unimpaired'
" Multiple cursors
Plug 'terryma/vim-multiple-cursors'
" Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Displays function signatures
Plug 'Shougo/echodoc.vim'
" Includes words within camelcase word
Plug 'bkad/CamelCaseMotion'
" +/- to expand or shrink region
Plug 'terryma/vim-expand-region'
" View tags
Plug 'majutsushi/tagbar'
" Undo tree
Plug 'simnalamburt/vim-mundo'
" Automatically closes certain structures
Plug 'tpope/vim-endwise'
" Auto-align table text
Plug 'godlygeek/tabular'
" Language server awesomeness
Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh',
      \ }

""""""""""
""" Search
""""""""""

" Update variants of a word
Plug 'tpope/vim-abolish'
" Better search
Plug 'mileszs/ack.vim'

""""""""""""""""
""" Text Objects
""""""""""""""""
" Allows you to create custom text objects
Plug 'kana/vim-textobj-user'
" Helps select ruby blocks
Plug 'nelstrom/vim-textobj-rubyblock'

"""""""""""""""
""" Integration
"""""""""""""""

" Unix commands
Plug 'tpope/vim-eunuch'
" Git wrapper
Plug 'tpope/vim-fugitive'
" Shows diffs in side column
Plug 'airblade/vim-gitgutter'
" Async linting
Plug 'w0rp/ale'
" Async commands
Plug 'tpope/vim-dispatch'
" Plug 'radenling/vim-dispatch-neovim'
" Tmux integration
Plug 'christoomey/vim-tmux-navigator'
" Test all the things
Plug 'janko-m/vim-test'

"""""""""""""
""" Languages
"""""""""""""

" Support for many languages
" Plug 'sheerun/vim-polyglot'

" Rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer', { 'for': 'rust' }
Plug 'sebastianmarkow/deoplete-rust', { 'for': 'rust' }

" Golang
Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoInstallBinaries' }
Plug 'zchee/deoplete-go', { 'for': 'go', 'do': 'make' }

" Protobuf
Plug 'uarun/vim-protobuf', { 'for': 'proto' }

" Ruby
Plug 'tpope/vim-bundler', { 'for': ['ruby', 'rake'] }
Plug 'ecomba/vim-ruby-refactoring', { 'for': ['ruby', 'rake'] }
