#!/usr/bin/env bash
rm -rf ~/.local/share/dein/
# nvim after_refresh \
#   +CocInstall\ coc-tsserver \
#   +CocInstall\ coc-angular \
#   +CocInstall\ coc-prettier \
#   +CocInstall\ coc-json
nvim after_refresh

