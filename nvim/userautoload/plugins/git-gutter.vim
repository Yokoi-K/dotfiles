let g:gitgutter_enabled=1
set updatetime=100
let g:gitgutter_override_sign_column_highlight=0
highlight clear SignColumn
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4

nnoremap gh :GitGutterLineHighlightsToggle<CR>

let g:vim_markdown_folding_disabled=1

