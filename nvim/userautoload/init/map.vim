" disable yank
nnoremap x "_x
nnoremap s "_s
nnoremap d "_d
nnoremap c "_c

" screen switching
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l

" useful map
" @see https://crieit.net/posts/Vim-5
nnoremap <silent> <Space>w :<C-u>update<CR>
nnoremap <silent> <Space>W :<C-u>update!<CR>
nnoremap <silent> <Space>q :<C-u>quit<CR>
nnoremap <silent> <Space>Q :<C-u>quit!<CR>

nnoremap <C-j> }
nnoremap <C-k> {
vnoremap <C-j> }
vnoremap <C-k> {

nnoremap G Gzz

" remove highlight
nnoremap <ESC><ESC> :nohl<CR>

" buffer tab
nnoremap <silent> { :bprev<CR>
nnoremap <silent> } :bnext<CR>
nnoremap <C-b> :bw<CR>

" - => ^, + -> $
nnoremap + $

" blame at Github
nnoremap <silent> <C-g> :<C-u>ToGithub<CR>
