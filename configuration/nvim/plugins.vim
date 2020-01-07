""" Plug Ins

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
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

" .h - .cpp switch
Plug 'ericcurtin/CurtineIncSw.vim'

" Auto complete
" Plug 'Valloric/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'grailbio/bazel-compilation-database'

" Bazel support

Plug 'google/vim-maktaba'

Plug 'rhysd/vim-clang-format'

" Color schemes
Plug 'rafi/awesome-vim-colorschemes'

" Pretty shit
Plug 'liuchengxu/vista.vim'

" LaTeX
Plug 'lervag/vimtex'

call plug#end()
