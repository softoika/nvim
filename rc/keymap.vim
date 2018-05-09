" 入力モード中に素早くjjと押すとノーマルモードに戻る
inoremap <silent> jj <Esc>
" j, k による移動を折り返されたテキストでも自然に振る舞うように変更
nnoremap j gj
nnoremap k gk

" ESCを2回押すとハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR> 

