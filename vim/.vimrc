set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tikhomirov/vim-glsl'
Plugin 'lunacookies/vim-colors-xcode'

call vundle#end()
filetype plugin indent on

if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

set termguicolors

set t_ut=

set encoding=utf8
set number
set relativenumber
set ttimeoutlen=0
set cursorline

syntax on
set background=light
let g:xcodehc_green_comments = 1
colorscheme xcodehc

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

set gfn=Source\ Code\ Pro\ 10

set laststatus=2
set cc=80

fun! GitStatusLine()
    let l:branch = fugitive#Head()
    return strlen(l:branch) > 0 ? '  ' . l:branch : ''
endfun

set statusline=
set statusline+=%{GitStatusLine()}                          " Git branch name
set statusline+=\ %y                                        " File type
set statusline+=\ %f                                        " Current file
set statusline+=%m                                          " Modified flag
set statusline+=%r                                          " Read only flag
set statusline+=%w                                          " Preview flag
set statusline+=%=                                          " Switch to right
set statusline+=%l/%L                                       " Line number
set statusline+=\ %3p%%                                     " % through file
set statusline+=\ %3c                                       " Column number
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}  " File encoding
set statusline+=\ %{&ff}                                    " Line ending

set foldmethod=marker
