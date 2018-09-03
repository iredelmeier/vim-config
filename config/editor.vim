set ttyfast
set lazyredraw

set shell=/bin/bash " keeps things simple for plugins

" Encoding
set encoding=utf-8
set termencoding=utf-8

" Editor basics
set ruler
set number " line numbers
set numberwidth=4
set wrap " wrap long lines
set linebreak " wrap at the end of words, not in the middle
set scrolloff=2 " keep some context visible
set iskeyword+=$,@ " characters that can be part of variable names
set tildeop " Enables ~<motion> to toggle case
" don't automatically add comments on enter
autocmd FileType * setlocal formatoptions-=c formatoptions -=r formatoptions -=o

" Vim command line
set cmdheight=2
set noshowmode

" Search
set incsearch " start searching immediately
set nohlsearch " don't keep searches highlighted
set ignorecase " default to case-insensitive searches
set smartcase " make search case-sensitive if it includes caps

" File navigation and management
set wildmode=longest:full " better autocompletion of file names
set wildmenu
set hidden " keep buffers open in the background
set autoread " update the file in vim if it changes outside
set noswapfile " grr
set backupdir=/tmp,/var/tmp
set switchbuf=useopen
set eol " ensure EOL gets added to non-binary files
set splitright " open w windows to the right
set foldmethod=syntax " fold based on language syntax
set nofoldenable " start with folds closed
set diffopt+=vertical " prefer diffs to use vertical splits

" Indentation
filetype plugin indent on " Detect file types
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set shiftround
set preserveindent
set showmatch " briefly show matching bracket if it's on screen
set matchtime=3

" Keep vim quiet
set noerrorbells
set visualbell
set t_vb=

" Editor navigation
set backspace=indent,eol,start " ???
set whichwrap+=<,>,[,] " arrow keys can jump lines

" History
set history=1000
set undolevels=100
if has('persistent_undo')
  set undofile
  set undodir=/tmp/vim-undo
endif
