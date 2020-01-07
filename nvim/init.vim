set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'

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
" Plug 'scrooloose/nerdcommenter'
" Plug 'taketwo/vim-ros'

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'ervandew/supertab'

Plug 'airblade/vim-gitgutter'

Plug 'vim-airline/vim-airline'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-surround'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'christoomey/vim-tmux-navigator'

Plug 'ludovicchabant/vim-gutentags'

" .h - .cpp switch
Plug 'ericcurtin/CurtineIncSw.vim'

Plug 'Valloric/YouCompleteMe'

" Bazel support

Plug 'google/vim-maktaba'

Plug 'bazelbuild/vim-bazel'

Plug 'arakashic/chromatica.nvim'

Plug 'rhysd/vim-clang-format'

Plug 'lervag/vimtex'

Plug 'blindFS/vim-taskwarrior'

Plug 'grailbio/bazel-compilation-database'

Plug 'terryma/vim-multiple-cursors'

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
nnoremap <C-O> :Buffers <cr>
nnoremap <C-P> :FZF <cr>
nnoremap <C-I> :Lines <cr>

" Find everywhere
nnoremap <C-F> :Find <cr>

" Move line up / down
nnoremap <m-j> :m .+1<cr>
nnoremap <m-k> :m .-2<cr>

" Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Switch Source to Header
nnoremap <m-h> :call CurtineIncSw()<cr>

" Clang Format
nnoremap <m-C-L> :ClangFormat <cr>

vnoremap <m-x> !xmllint --format - <cr>

nnoremap <C-M> :NERDTree <cr>

nnoremap <C-Q> :NERDTreeFind <cr>


" Default new pane
set splitbelow
set splitright

" Configuration

" Chromatica
let g:chromatica#enable_at_startup=1
let g:chromatica#responsive_mode=1
let g:chromatica#libclang_path="/usr/lib/llvm-6.0/lib/libclang.so.1"

" YCM
let g:ycm_confirm_extra_conf = 0

" clang format
let g:clang_format#auto_format = 1
let g:clang_format#command = "/usr/bin/clang-format-6.0"
