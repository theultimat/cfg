set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tomasiser/vim-code-dark'
Plugin 'tpope/vim-fugitive'
Plugin 'tikhomirov/vim-glsl'

call vundle#end()
filetype plugin indent on

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

set t_Co=256
set t_ut=

set encoding=utf8
set number
set relativenumber
set ttimeoutlen=0
set cursorline

syntax on
colorscheme codedark

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

set wildmenu
set wildmode=list:longest,full
set hidden

set tabstop=4
set shiftwidth=4
set expandtab

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre * :call TrimWhitespace()

highlight TrailingWhitespace ctermbg=red guibg=red
match TrailingWhitespace /\s\+$/

inoremap <S-Tab> <C-d>

set hlsearch

set backspace=
