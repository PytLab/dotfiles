" ShaoZhengjiang's vimrc.
" Basic settings.
syntax on               " 语法高亮  
set showcmd             " 输入的命令显示出来，看的清楚些  
set laststatus=1        " 启动显示状态行(1),总是显示状态行(2)  
set foldenable          " 允许折叠  
set foldmethod=manual   " 手动折叠  
set nocompatible
set number
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  
if version >= 603
	set helplang=cn
	set encoding=utf-8
endif

set fileformat=unix     " 设置以unix的格式保存文件
set cindent             " 设置C样式的缩进格式
set tabstop=4           " 设置table长度
set shiftwidth=4        " 同上
set showmatch           " 显示匹配的括号
set cursorline          " 突出显示当前行

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on

" Plugins.
Plugin 'Lokaltog/vim-powerline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'

" Plugin vim-powerline settings.
let g:indentLine_char = '┆'
let g:indentLine_enabled = 1

" Plugin nerdtree settings.
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeWinSize=25

