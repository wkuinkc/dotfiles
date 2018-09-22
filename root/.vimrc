" Begin plugin init
call plug#begin('~/.vim/plugged')

" Plug 'scrooloose/nerdtree'
" Plug 'tpope/vim-bundler'
" Plug 'danchoi/ri.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'junegunn/fzf', { 'dir': $HOME . '/.fzf', 'do': 'yes \| ./install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

filetype plugin indent off

if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
map! <F1> <F1>
map! <F2> <F2>
map! <F3> <F3>
map! <F4> <F4>
map! <S-F1> <S-F1>
map! <S-F2> <S-F2>
map! <S-F3> <S-F3>
map! <S-F4> <S-F4>
map! <End> <End>
map! <Home> <Home>
nmap ,mh wbgueyei<ea></pa>bba
nmap ,h1 _i<h1>A</h1>
nmap ,h2 _i<h2>A</h2>
nmap ,h3 _i<h3>A</h3>
nmap ,h4 _i<h4>A</h4>
nmap ,h5 _i<h5>A</h5>
nmap ,h6 _i<h6>A</h6>
nmap ,hb wbi<b>ea</b>bb
nmap ,he wbi<em>ea</em>bb
nmap ,hi wbi<i>ea</i>bb
nmap ,hu wbi<u>ea</i>bb
nmap ,hs wbi<strong>ea</strong>bb
nmap ,ht wbi<tt>ea</tt>bb
nmap ,hx wbF<df>f<df>
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
map <F1> <F1>
map <F2> <F2>
map <F3> <F3>
map <F4> <F4>
map <S-F1> <S-F1>
map <S-F2> <S-F2>
map <S-F3> <S-F3>
map <S-F4> <S-F4>
map <End> <End>
map <Home> <Home>
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=2
set fileencodings=utf-8,latin1
set formatoptions=tcql
set helplang=en
set history=200
set nomodeline
set ruler
set viminfo='20,\"50
set tags=./tags;/
" vim: set ft=vim :
syntax off
set nohls
let loaded_matchparen = 1
map <Nul> :e#<CR>
let mapleader = '\'
let maplocalleader = '\'
let g:ctrlp_map = '<leader>t'

" ctlrp root path uses git
let g:ctrlp_working_path_mode = 'ra'

" ignore big folders
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|__pycache__|data|node_modules)$',
  \ 'file': '\v\.(exe|so|dll|pyc)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" ag is fast enough that CtrlP doesn't need to cache
let g:ctrlp_use_caching = 0

filetype on
cmap \t CtrlP
" map ,t use :Ag! to search for word under cursor
""" map ,t wbyw:Ag! -s -w "
map ,t :Ag!
map ,l :Lines
