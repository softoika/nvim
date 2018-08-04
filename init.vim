" NeovimにはPython3が必須で、Python2系と3系のパスを指定する必要がある
let g:python_host_prog = '/Users/hanafusaryo/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/hanafusaryo/.pyenv/versions/neovim3/bin/python'

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

call s:load('plugins')
call s:load('style')
call s:load('keymap')
call s:load('other')

