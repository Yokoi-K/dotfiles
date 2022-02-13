" common
set number
" set relativenumber
set autoindent
set tabstop=2
set splitright
set cursorline
set signcolumn=yes
set wildmenu
set wildmode=full
set shortmess+=c

" move fast
set ttyfast
set lazyredraw
set re=1
set synmaxcol=128
syntax sync minlines=256

" no backup
set noswapfile
set nobackup
set nowritebackup

"" multibyte
set ambiwidth=double

"" clipboard
set clipboard=unnamed

"" background
highlight! Normal ctermbg=NONE guibg=NONE
highlight! NonText ctermbg=NONE guibg=NONE
highlight! LineNr ctermbg=NONE guibg=NONE

" encoding
let $LANG='en_US.UTF-8'
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

