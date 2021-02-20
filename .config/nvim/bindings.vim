""" Bindings
let mapleader = " "

" Search in buffers
nnoremap <Leader>O :Buffers <cr>
nnoremap <Leader>P :FZF <cr>
nnoremap <Leader>I :Lines <cr>

" Find everywhere
nnoremap <Leader>F :Find <cr>

" Move line up / down
nnoremap <m-j> :m .+1<cr>
nnoremap <m-k> :m .-2<cr>

" Navigation
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>
nnoremap <Leader>q <C-W>q

" Directory management
nnoremap <Leader>m :CocCommand explorer <cr>

" Refactoring
nnoremap <Leader>r :CocCommand document.renameCurrentWord <cr>
nnoremap <Leader>h :nohlsearch <cr>

" Resizing panes
nnoremap <Leader>L :vertical resize +5 <cr>
nnoremap <Leader>H :vertical resize -5 <cr>
nnoremap <Leader>J :resize -5 <cr>
nnoremap <Leader>K :resize +5 <cr>
