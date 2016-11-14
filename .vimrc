" VIM Configuration - Marto
" cancels compatibility w Vi
" pathogen

set nocompatible
call pathogen#infect()
"-- Display
set title
set number
set ruler
set wrap


" older regex
set re=1
set scrolloff=3

set guioptions=T
"-- search
set ignorecase
set smartcase
set incsearch
set hlsearch
"-- beep
set visualbell
set noerrorbells
"-- backspaces as expected
set backspace=indent,eol,start

"-- hide buffer
set hidden

"-- tfast
set ttyfast

"-- syntax hl
syntax enable

filetype on
filetype plugin on
filetype indent on

set tabstop=4
set shiftwidth=4
set expandtab

" use solarized
set background=dark
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors=16
let g:solarized_termtrans = 1
colorscheme solarized

" fonts
set guifont=Monaco:h13
set antialias

" always nerdtree
" autocmd vimenter * NERDTree

" -- no dir keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" -- supply esc
:imap jj <Esc>
:imap jk <Esc>
:imap ii <Esc>
:imap ` <Esc>
:imap <S-Space> <Esc>
:imap <M-Space> <Esc>

let mapleader = ","

" -- ack
let g:ackprg="ack -H --nocolor --nogroup --column"
" add mark and search
nmap <leader>j mA:Ack<space>
" add mark and search word under cursor
nmap <leader>ja mA:Ack "<C-r>=expand("<cword>")<cr>"
nmap <leader>jA mA:Ack "<C-r>=expand("<cWORD>")<cr>" 

" ctrlp
let g:ctrlp_map = '<leader>m'

" -- EJS highlighting
au BufNewFile,BufRead *.ejs set filetype=html
