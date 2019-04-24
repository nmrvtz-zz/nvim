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
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'Nequo/vim-allomancer'
Plugin 'srcery-colors/srcery-vim'
" Airline and style stuff
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
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
Plugin 'rking/ag.vim'
Plugin 'luochen1990/rainbow'
" JavaScript
Plugin 'neoclide/vim-jsx-improve'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'ryanoasis/vim-devicons'
Plugin 'SirVer/ultisnips'
Plugin 'mlaursen/vim-react-snippets'
" Clojure
Plugin 'guns/vim-clojure-static'
call vundle#end()
