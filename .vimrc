set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'morhetz/gruvbox'
 Plugin 'tpope/vim-fugitive'
 Plugin 'leafgarland/typescript-vim'
 Plugin 'vim-utils/vim-man'
 Plugin 'lyuts/vim-rtags'
 " Plugin 'kien/ctrlp.vim'
 Plugin 'mbbill/undotree'
 Plugin 'pangloss/vim-javascript'    " JavaScript support
 Plugin 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
 Plugin 'jparise/vim-graphql'        " GraphQL syntax
 Plugin 'neoclide/coc.nvim', {'branch': 'release'}
 Plugin 'ternjs/tern_for_vim', { 'do' : 'npm install' }
 " Plugin 'preservim/nerdtree'
 Plugin 'prettier/vim-prettier', { 'do': 'yarn install' }
 Plugin 'Quramy/tsuquyomi'
 Plugin 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
 Plugin 'tpope/vim-commentary'
 Plugin 'scrooloose/nerdtree'
 Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
 Plugin 'Xuyuanp/nerdtree-git-plugin'
 Plugin 'ryanoasis/vim-devicons'
 Plugin 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
 Plugin 'junegunn/fzf', { 'do': { -> fzf#install()} }
 Plugin 'junegunn/fzf.vim'
 Plugin 'vim-airline/vim-airline'
 Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

filetype plugin indent on

syntax on

set noerrorbells
set expandtab
set smartindent
set nu
set smartcase
set noswapfile
set noswapfile
set nobackup
set undofile
set incsearch
set nowrap
set expandtab
set tabstop=2 softtabstop=2
set shiftwidth=2
set smartindent

set backupdir=~/.backup/,/tmp//
set directory=~/.swp/,/tmp//
set undodir=~/.undo/,/tmp//

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

set background=dark
colorscheme gruvbox

" CoC extensions
let g:coc_global_extensions = ['coc-tsserver']

filetype plugin on
set omnifunc=syntaxcomplete#Complete

inoremap jk <Esc>
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>k
nnoremap <C-k> <C-w>j

" fzf
nnoremap ff :Files<Cr>
let g:fzf_layout = { 'down': '20%' }

nnoremap j k
nnoremap k j

set mouse=a
set relativenumber

packloadall

set listchars=tab:\|\
set list

set encoding=UTF-8

"airline theme
let g:airline_theme='simple'
