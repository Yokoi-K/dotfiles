" import userautoload dir
runtime! userautoload/init/*.vim
runtime! userautoload/plugins/*.vim

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {
      'lua',
      'ruby',
    }
  }
}
EOF

let g:onedark_config = {
    \ 'style': 'darker',
\}
colorscheme onedark
" colorscheme neodark
