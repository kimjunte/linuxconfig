let mapleader =","

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn./vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
    "Plugin that allows you to wrap text in the same line
    Plug 'junegunn/goyo.vim'
    "Plugin to allow syntax highlighting for i3-config
    Plug 'mboughaba/i3config.vim'
    "Plugin for pep8 in python
    Plug 'nvie/vim-flake8'
call plug#end()

" Some basics
    set nocompatible
    filetype plugin on
    syntax on
    set encoding=utf-8
    set number relativenumber
    set clipboard=unnamedplus
    set tabstop=4
    set shiftwidth=4
    set expandtab
    autocmd FileType set textwidth=79
    set mouse=a

" Moving of code blocks become easier
    vnoremap < <gv
    vnoremap > >gv

" Enable autocompletion:
    set wildmode=longest,list,full

" Splits now opens at the bottom and right. Try ':sp'
    set splitbelow splitright

" Replace a word with another word, bound to Ctrl+h
    map <C-h> <esc>:%s/<word>/<replace>/gc

" Bind for :sort
    vnoremap <Leader>s :sort<CR>

" tabnew easy navigation
    map <Leader>n <esc>:tabprevious<CR>
    map <Leader>m <esc>:tabnext<CR>

" Disables swap files and backups
    set nobackup
    set nowritebackup
    set noswapfile

" Pep8 for python
    autocmd Filetype python set colorcolumn=72,79
    autocmd Filetype python highlight ColorColumn ctermbg=2 guibg=lightgrey

" Visual Block Mode
    :command! VisualBlock execute "normal! \<C-v>"
    map <Leader>v :VisualBlock<CR>
