" copybuddy.vim - auto-copy files around
"
" See :help copybuddy

" don't load twice
if exists("g:loaded_copybuddy") || &cp || v:version < 700
  finish
endif
let g:loaded_copybuddy = 1

function! CopyBuddy()
    if filereadable(".cb")
        silent execute "!cb ./.cb"
        redraw!
    endif
endfunction

augroup cb
    autocmd!
    autocmd BufWritePost * call CopyBuddy()
augroup END