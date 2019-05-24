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
Plugin 'exitface/synthwave.vim'
Plugin 'cseelus/vim-colors-lucid'
Plugin 'kabbamine/yowish.vim'
Plugin 'josuegaleas/jay'
Plugin 'ajh17/Spacegray.vim'
" Airline and style stuff
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
" Git Stuff
Plugin 'tpope/vim-fugitive'
Plugin 'mhinz/vim-signify'
" Tools
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'justinmk/vim-sneak'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'rking/ag.vim'
Plugin 'luochen1990/rainbow'
Plugin 'liuchengxu/vista.vim'
" JavaScript
Plugin 'neoclide/vim-jsx-improve'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'ryanoasis/vim-devicons'
Plugin 'SirVer/ultisnips'
Plugin 'mlaursen/vim-react-snippets'
Plugin 'othree/xml.vim'
" Clojure
Plugin 'guns/vim-clojure-static' 
Plugin 'eraserhd/parinfer-rust', { 'do': 'cargo build --release' }
Plugin 'tpope/vim-fireplace'
call vundle#end()
