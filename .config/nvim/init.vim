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
source $HOME/.config/nvim/quickhl.vim
source $HOME/.config/nvim/formatter.lua

" Default new pane
set splitbelow
set splitright

let g:webdevicons_enable = 1

" black
autocmd BufWritePre *.py execute ':Black'

" omnisharp
autocmd BufWritePre *.cs execute ':OmniSharpCodeFormat'

" formatter.vim
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END

colorscheme OceanicNext
