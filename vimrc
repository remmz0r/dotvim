set encoding=utf-8

set termguicolors
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set number
" shift tab for command mode
nmap <S-Tab> <<
" shift tab for insert mode
imap <S-Tab> <Esc><<i

noremap <F8> :call HexMe()<CR>

let $in_hex=0
function HexMe()
    set binary
    set noeol
    if $in_hex>0
        :%!xxd -r
        let $in_hex=0
    else
        :%!xxd
        let $in_hex=1
    endif
endfunction

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'Yggdroot/indentLine'
Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on

set t_Co=256
syntax on
set background=dark
colorscheme gruvbox
