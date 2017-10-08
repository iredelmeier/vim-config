" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  if !exists('b:deoplete_disable_auto_complete') || b:deoplete_disable_auto_complete != 0
    let b:multiple_cursors_lock_deoplete = 1
    let b:deoplete_disable_auto_complete = 1
  endif
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
  if exists('b:deoplete_disable_auto_complete')
    unlet b:multiple_cursors_lock_deoplete
    unlet b:deoplete_disable_auto_complete
  endif
endfunction
