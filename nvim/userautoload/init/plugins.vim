call plug#begin('~/.config/nvim/plugged')

" tree icon
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" bracket auto close
Plug 'cohama/lexima.vim'
Plug 'tpope/vim-surround'

" editorconfig
Plug 'editorconfig/editorconfig-vim'

" git
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'

" emmet
Plug 'mattn/emmet-vim'

" markdown
Plug 'tpope/vim-markdown'

" polyglot
Plug 'sheerun/vim-polyglot'

" tree
Plug 'preservim/nerdtree'

" tree/plugin
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'jistr/vim-nerdtree-tabs'

" dart
Plug 'dart-lang/dart-vim-plugin'

" flutter
Plug 'thosakwe/vim-flutter'

" lsp
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" auto-pairs
Plug 'jiangmiao/auto-pairs'

" theme
Plug 'navarasu/onedark.nvim'
Plug 'KeitaNakamura/neodark.vim'

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" clever-f
Plug 'rhysd/clever-f.vim'

" finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" window resize
Plug 'simeji/winresizer'

" ale
Plug 'dense-analysis/ale'

" commentout
Plug 'tpope/vim-commentary'

" ddc
Plug 'Shougo/ddc.vim'
Plug 'vim-denops/denops.vim'
Plug 'Shougo/pum.vim'
Plug 'Shougo/ddc-matcher_head'
Plug 'shun/ddc-vim-lsp'

call plug#end()
