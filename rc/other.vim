set clipboard=unnamed,unnamedplus " システムのクリップボードと共有

" o/Oでのコメント継続をしない
autocmd FileType * setlocal formatoptions-=o

"--------------------------------------
" 検索/置換の設定
"--------------------------------------
set ignorecase         " 大文字と小文字を区別しない
set smartcase          " 検索文字に大文字がある場合は大文字小文字を区別

"--------------------------------------
" ファイル処理など
"--------------------------------------
set nobackup           " 末尾に~が付くバックアップファイルを生成しない
set noswapfile         " ファイルを開いているときにできる.swapファイルを生成しない
set noundofile         " .un~のファイルを生成しない

