set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

call vundle#end()

""" Config

"autocmd VimEnter * NERDTree
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

""" Plug Ins

call plug#begin('~/.vim/plugged')

" Plug 'benmills/vimux'
" Plug 'jsfaint/gen_tags.vim'
" Plug 'taketwo/vim-ros'

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'ervandew/supertab'

" Gutter signs
Plug 'airblade/vim-gitgutter'

" Bottom status line
Plug 'vim-airline/vim-airline'

" git short cuts
Plug 'tpope/vim-fugitive'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'christoomey/vim-tmux-navigator'

"Plug 'ludovicchabant/vim-gutentags'

" .h - .cpp switch
Plug 'ericcurtin/CurtineIncSw.vim'

Plug 'Valloric/YouCompleteMe'

Plug 'grailbio/bazel-compilation-database'

" Bazel support

Plug 'google/vim-maktaba'

" Plug 'google/vim-codefmt'

" Plug 'bazelbuild/vim-bazel'

" Plug 'arakashic/chromatica.nvim'

Plug 'rhysd/vim-clang-format'

call plug#end()

""" Custom Commands

" Fzf find in files
" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --follow --glob "!.git/*" --glob "*.cpp" --glob "*.h" --glob "*.hpp" --glob "*.py" --color "always" '.shellescape(<q-args>), 1, <bang>0)

" command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

""" Bindings

" Search in buffers
nnoremap <Leader>o :Buffers <cr>
nnoremap <Leader>p :FZF <cr>
nnoremap <Leader>i :Lines <cr>

" Find everywhere
nnoremap <Leader>f :Find <cr>

" Move line up / down
nnoremap <m-j> :m .+1<cr>
nnoremap <m-k> :m .-2<cr>

" Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Switch Source to Header
" nnoremap <m-h> :call CurtineIncSw()<cr>

nnoremap <C-M> :NERDTree <cr>

nnoremap <C-Q> :NERDTreeFind <cr>

vnoremap <m-9> :YcmCompleter GoToDefinition <cr>
vnoremap <m-0> :YcmCompleter GoToDeclaration <cr>
nnoremap <m-9> :YcmCompleter GoToInclude <cr>


" Default new pane
set splitbelow
set splitright

" Configuration

" YCM
" let g:ycm_confirm_extra_conf = 0

" clang format
let g:clang_format#auto_format = 1
let g:clang_format#command = "/usr/bin/clang-format-6.0"
