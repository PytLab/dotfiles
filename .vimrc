" ShaoZhengjiang's vimrc.

" Basic settings.
syntax on               " 语法高亮  
set showcmd             " 输入的命令显示出来，看的清楚些  
set laststatus=1        " 启动显示状态行(1),总是显示状态行(2)  
set foldenable          " 允许折叠  
set foldmethod=manual   " 手动折叠  
set nocompatible
set number
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif

set fileformat=unix     " 设置以unix的格式保存文件
set cindent             " 设置C样式的缩进格式
set tabstop=4           " 设置table长度
set shiftwidth=4        " 同上
set expandtab
set showmatch           " 显示匹配的括号
set cursorline          " 突出显示当前行

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

" Plugin vim-powerline settings.
let g:indentLine_char = '┆'
let g:indentLine_enabled = 1

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

