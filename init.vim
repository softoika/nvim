" dein.vimなどpython3が必要なプラグインのためにpython3のパスを指定する
let g:python3_host_prog = $NVIM_PYTHON3_HOST_PROG

" reset augroup
augroup MyAutoCmd
	autocmd!
augroup END

" ENV
let $CACHE = empty($XDG_CACHE_HOME) ? expand('$HOME/.cache') : $XDG_CACHE_HOME
let $CONFIG = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config') : $XDG_CONFIG_HOME
let $DATA = empty($XDG_DATA_HOME) ? expand('$HOME/.local/share') : $XDG_DATA_HOME

" Load rc file
function! s:load(file) abort
    let s:path = expand('$CONFIG/nvim/rc/' . a:file . '.vim')

    if filereadable(s:path)
        execute 'source' fnameescape(s:path)
    endif
endfunction

call s:load('keymap')
call s:load('plugin')
call s:load('style')
call s:load('other')
call s:load('template')

autocmd FileType * setlocal formatoptions-=o
