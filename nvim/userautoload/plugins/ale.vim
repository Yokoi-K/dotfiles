let g:ale_fixers = {
\   'dart': ['dartfmt'],
\}

let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 0
let g:ale_sign_column_always = 1
" let g:ale_sign_error = \\f658


nmap <silent> gn <Plug>(ale_next_wrap)
nmap <silent> gp <Plug>(ale_previous_wrap)
" nmap <silent> gC <Plug>(ale_code_action)
