set nocompatible              " be iMproved, required
filetype off                  " required

""" Config
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftwidth=4
set autoindent
set copyindent

set list
set number
set cursorline
set clipboard=unnamedplus
" set cc=120
hi ColorColumn ctermbg=226
set colorcolumn=120

source $HOME/.config/nvim/fzf.vim
source $HOME/.config/nvim/bindings.vim
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/csv.vim
source $HOME/.config/nvim/quickhl.vim
source $HOME/.config/nvim/vista.vim

" Default new pane
set splitbelow
set splitright

" clang format
let g:clang_format#auto_format = 1
let g:clang_format#command = "clang-format-11"

let g:webdevicons_enable = 1

" black
autocmd BufWritePre *.py execute ':Black'

" omnisharp
autocmd BufWritePre *.cs execute ':OmniSharpCodeFormat'

colorscheme OceanicNext
