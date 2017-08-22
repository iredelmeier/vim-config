" From luan/vimfiles

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '➤'
let g:ale_sign_info = '➟'
let g:ale_sign_column_always = 1

" \   'go': ['go build', 'gofmt', 'gometalinter'],
      " \ 'go': ['gofmt', 'golint', 'gometalinter', 'gosimple', 'go vet', 'staticcheck'],
let g:ale_linters = {
      \ 'go': ['go build', 'gofmt', 'gometalinter'],
\}
" let g:ale_linters = {
      " \   'go': ['go build', 'gofmt', 'gometalinter'],
      " \}
