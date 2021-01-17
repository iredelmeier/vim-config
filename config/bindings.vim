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

" deoplete
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"

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
function LC_maps()
  if has_key(g:LanguageClient_serverCommands, &filetype)
    nnoremap <F9> :call LanguageClient_contextMenu()<CR>

    nnoremap <buffer> <silent> K :call LanguageClient#textDocument_hover()<CR>
    nnoremap <buffer> <silent> gd :call LanguageClient#textDocument_definition()<CR>
    nnoremap <buffer> <silent> gr :call LanguageClient#textDocument_rename()<CR>
    nnoremap <buffer> <silent> gu :call LanguageClient#textDocument_references()<CR>
  endif
endfunction

autocmd FileType * call LC_maps()
