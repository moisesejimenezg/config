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

" Auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'grailbio/bazel-compilation-database'

Plug 'rhysd/vim-clang-format'

" Color schemes
Plug 'rafi/awesome-vim-colorschemes'

" Pretty shit
Plug 'liuchengxu/vista.vim'

" LaTeX
Plug 'lervag/vimtex'

" Python autocompletion
Plug 'davidhalter/jedi-vim'

" Fonts
Plug 'ryanoasis/vim-devicons'

" CSV files
Plug 'chrisbra/csv.vim'

" Highlighting
Plug 't9md/vim-quickhl'

call plug#end()
