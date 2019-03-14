set rtp+=~/.vundle/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'

" Completetions
Plugin 'jiangmiao/auto-pairs'
Plugin 'neoclide/coc.nvim'
Plugin 'alvan/vim-closetag'
" Themes
Plugin 'ayu-theme/ayu-vim'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'rakr/vim-one'
Plugin 'tyrannicaltoucan/vim-quantum'
" Airline and style stuff
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'ryanoasis/vim-devicons'
" Git Stuff
Plugin 'tpope/vim-fugitive'
Plugin 'mhinz/vim-signify'
" Tools
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'justinmk/vim-sneak'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
" JavaScript
Plugin 'neoclide/vim-jsx-improve'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'heavenshell/vim-jsdoc'

call vundle#end()
