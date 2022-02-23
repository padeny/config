set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}
" git repos on your local machine (i.e. when working on your own plugin)

" All of your Plugins must be added before the following line
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-scripts/TeTrIs.vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'uguu-org/vim-matrix-screensaver'
"Plugin 'ambv/black'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ===================
set modelines=0     " CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
let NERDTreeIgnore=['\.pyc$','\~$']
map <F10> :NERDTreeToggle<CR>>
set nocompatible    " Use Vim defaults instead of 100% vi compatibility
set backspace=2     " more powerful backspacing

set encoding=utf-8
" set fileencodings=gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set nu
syntax on
nnoremap <F2>:set nonumber!<CR>:set foldcolumn=0<CR>
set t_Co=256
" set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set incsearch
" 搜索时大小写不敏感
set ignorecase
set hlsearch
set ruler
set pastetoggle=<F3>
set omnifunc=syntaxcomplete#Complete
set colorcolumn=100
set noundofile     
set nobackup     
set noswapfile
set scrolljump=1
set completeopt=longest,menu
" 定义前缀
let mapleader=";"
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
"autocmd BufWritePre *.py execute ':Black'
"nnoremap <C-J> <C-W><C-J> 
"nnoremap <C-K> <C-W><C-K> 
"nnoremap <C-L> <C-W><C-L> 
"nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <;><C-J> 
nnoremap <C-K> <;><C-K> 
nnoremap <C-L> <;><C-L> 
nnoremap <C-H> <;><C-H>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap sudow w !sudo tee % > /dev/null
