" 入力モード中に素早くjjと押すとノーマルモードに戻る
inoremap <silent> jj <Esc>
inoremap <silent> っｊ <Esc>
" j, k による移動を折り返されたテキストでも自然に振る舞うように変更
nnoremap j gj
nnoremap k gk
" ESCを2回押すとハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR> 
" Ctrl + hjkl でウィンドウ間を移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Shift + 矢印でウィンドウサイズを変更
nnoremap <S-Left>  <C-w><<CR>
nnoremap <S-Right> <C-w>><CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>
" Yで現在位置から行末までヤンクできるようにする
nnoremap Y y$
" terminalモードからノーマルモードへjjで戻るようにする
tnoremap <silent> jj <C-\><C-n>

" 画面分割してからターミナルを開く
command! Tsp :sp | :terminal
command! Tvp :vsp | :terminal

nnoremap <Return> o<ESC>
