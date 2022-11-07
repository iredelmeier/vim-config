let g:mapleader=","
let g:maplocalleader="-"

" vim-test
" Run tests, etc.
nnoremap <F2> :TestNearest<CR>
nnoremap <F3> :TestFile<CR>
nnoremap <F4> :TestSuite<CR>
nnoremap <F5> :TestLast<CR>

" Toggle auto-indent on paste
set pastetoggle=<F6>
noremap <F6> :set invpaste<CR>:set paste?<CR>

" mundo
" Toggle undo history
nnoremap <F7> :MundoToggle<CR>

" tagbar
" Toggle tag window
nnoremap <F8> :TagbarToggle<CR>

" nerdtree
" toggle project structure
nnoremap \ :NERDTreeToggle<CR>
nnoremap \| :NERDTreeFind<CR>

" fugitive
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gg :Gbrowse<cr>
nnoremap <leader>gl :Glog<cr>
nnoremap <leader>gv :Gitv<cr>
nnoremap <leader>gpl :Git pull --rebase<cr>
nnoremap <leader>gps :Git push origin head<cr>

" fzf
nnoremap <C-p> :FZFFiles<cr>
nnoremap <leader>f :FZFFiles<cr>
nnoremap <leader>m :FZFHistory<cr>
nnoremap <leader>F :FZFBTags<cr>
nnoremap <leader>S :FZFTags<cr>
nnoremap <leader>L :FZFBLines<cr>
nnoremap <leader>b :FZFBuffers<cr>
nnoremap <leader>C :FZFColors<cr>

" LanguageClient
" function LC_maps()
  " if has_key(g:LanguageClient_serverCommands, &filetype)
    " nnoremap <F9> :call LanguageClient_contextMenu()<CR>

    " nnoremap <buffer> <silent> K :call LanguageClient#textDocument_hover()<CR>
    " nnoremap <buffer> <silent> gd :call LanguageClient#textDocument_definition()<CR>
    " nnoremap <buffer> <silent> gr :call LanguageClient#textDocument_rename()<CR>
    " nnoremap <buffer> <silent> gu :call LanguageClient#textDocument_references()<CR>
  " endif
" endfunction

" autocmd FileType * call LC_maps()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
