" リーダーキーをスペースに変更
let mapleader = "\<Space>"

" j, k による移動を折り返されたテキストでも自然に振る舞うように変更
nnoremap j gj
nnoremap k gk
" ESCを2回押すとハイライトを消す
nnoremap <silent> <Esc><Esc> :nohlsearch<CR> 
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
" Enterでノーマルモードのまま改行挿入
nnoremap <Return> o<ESC>

" jjでノーマルモード
inoremap <silent> jj <Esc>:<C-u>w<CR>
" インサートでもZZで保存終了
inoremap <silent> ZZ <Esc>ZZ
" カーソル位置を維持したまま行末にセミコロンを挿入する
inoremap ;; <ESC>msA;<ESC>`sa
" インサートモードでemacsキーバインドのカーソル移動ができるようにする(行内限定)
inoremap <C-f> <C-o>l
inoremap <C-b> <C-o>h
inoremap <C-a> <C-o>^
inoremap <C-e> <C-o>$

" terminalモードからノーマルモードへjjで戻るようにする
tnoremap <silent> jj <C-\><C-n>
