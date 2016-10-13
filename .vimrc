" ShaoZhengjiang's vimrc.

" Basic settings.
syntax on
set showcmd
set laststatus=1
set foldenable
set foldmethod=manual
set nocompatible
set number
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif

set fileformat=unix
set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set showmatch
set cursorline

" Auto add head info
" .py file into add header
function HeaderPython()
    call setline(1, "#!/usr/bin/env python")
    call append(1, "# -*- coding: utf-8 -*-")
    normal G
    normal o
endf
autocmd bufnewfile *.py call HeaderPython()

" .sh file
function HeaderBash()
    call setline(1, "#!/usr/bin/env bash")
    normal G
    normal o
endf
autocmd bufnewfile *.sh call HeaderBash()

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
filetype plugin indent on

" Plugins.
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'dyng/ctrlsf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Plugin nerdtree settings.
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeWinSize=25

" Plugin tagbar settings.
map <F3> :TagbarToggle<CR> 

" Plugin ctrlsf settings.
map <F4> <Plug>CtrlSFPrompt
map <F5> <Plug>CtrlSFQuickfixPrompt

" Plugin indentLine settings.
let g:indentLine_char = "┆"
let g:indentLine_enabled = 1
let g:autopep8_disable_show_diff=1

" Plugin airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="luna"

" Plugin YCM settings.
set completeopt=longest,menu
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'


