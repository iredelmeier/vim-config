let g:fzf_command_prefix = 'FZF'
function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

let g:ctrlp_map = ''
let g:ctrlp_cmd = ''
