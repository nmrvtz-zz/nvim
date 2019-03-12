let mapleader=" "

" nnoremap ; :
" nnoremap : ;

" Searching goodies
" Center search result line in screen
nnoremap n nzz
nnoremap N Nzz

nnoremap <leader>f :vim<SPACE>

" Open a quickfix window for last search
nnoremap <silent> <leader>/ :execute 'vimgrep /'.@/.'/g %'<CR>
" Open and close quickfix menu
nnoremap <leader>co :cw<CR>
nnoremap <leader>cc :ccl<CR>
nnoremap <silent> <UP> :cope<CR>
nnoremap <silent> <DOWN> :cclose<CR>
nnoremap <silent> <leader>cn :cnext<CR>
nnoremap <silent> <leader>cp :cprev<CR>
nnoremap <silent> <RIGHT> :cnext<CR>
nnoremap <silent> <LEFT> :cprev<CR>

nnoremap <C-\> :NERDTreeToggle<CR>
nnoremap <C-/> :NERDTreeFind<CR>
nnoremap <leader>r :source $MYVIMRC<CR>

nnoremap <leader>, :let @/=""<CR>

nnoremap <leader>av :AV<CR>
nnoremap <leader>as :AS<CR>
nnoremap <leader>a :A<CR>

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" Git mappings
nnoremap <leader>gs :G<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gb :Gblame<CR>

" vim-test mappings
nnoremap <silent> <leader>tt :TestFile<CR>
nnoremap <silent> <leader>tn :TestNearest<CR>

" Keep visual selection {{{
vnoremap > >gv
vnoremap < <gv
" }}}

" Smart way to move between windows
map <S-j> <C-W>j
map <S-k> <C-W>k
map <S-h> <C-W>h
map <S-l> <C-W>l
