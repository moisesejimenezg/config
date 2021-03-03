""" Plug Ins

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdcommenter'

" Gutter signs
Plug 'airblade/vim-gitgutter'

" Bottom status line
Plug 'vim-airline/vim-airline'

" git short cuts
Plug 'tpope/vim-fugitive'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'christoomey/vim-tmux-navigator'

" Auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'grailbio/bazel-compilation-database'

Plug 'rhysd/vim-clang-format'

" Color schemes
Plug 'rafi/awesome-vim-colorschemes'

" Black
Plug 'psf/black', { 'branch': 'stable' }

" Fonts
Plug 'ryanoasis/vim-devicons'

call plug#end()
