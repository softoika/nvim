"--------------------------------------
" タブ/インデント関連
"--------------------------------------
set expandtab          " タブ入力を複数の空白文字に置き換える
set tabstop=4          " タブ文字の表示幅
set shiftwidth=4       " Vimが挿入するインデントの幅
set autoindent
set smartindent
" python用smartindentカスタマイズ
autocmd FileType python setlocal smartindent cinwords=if,elif,else,for,while,with,try,except,finally,def,class
autocmd FileType
  \ html,css,typescript,vue,sh,zsh,yaml,json
  \ setlocal shiftwidth=2 tabstop=2 softtabstop=2

"--------------------------------------
" 表示関連
"--------------------------------------
set number             " 行番号を表示する"
set colorcolumn=80     " 80文字目にラインを入れる
set cursorline         " カーソル行の背景色を変える
set pumheight=10       " 補完メニューの高さ
set relativenumber
