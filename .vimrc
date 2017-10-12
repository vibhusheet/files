" Configured for basic python use
" Plugins for Lint(pep8), autocomplete, beautify
" Just set the rtp to the path where vundle is installed
" Install the plugins and you're good to go

set nocompatible " requried
filetype plugin indent off " required
syntax off

" set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where vundle should install plugins
" call vundle#begin()('~/.vim/bundle/plugins')

"let vundle manage vundle required
Plugin 'vundlevim/vundle.vim'

" Keep Plugin commands between vundle#begin/end.
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'git://git.wincent.com/command-t.git'

" The sparkup vim script is in a subdirectory of this repo called vim
" Pass the path to set the runtime properly
Plugin 'rstacruz/sparkup', {'rtp':'vim/'}

" The airline bar config
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Smartpairs plugin for slecting inside brackets/braces and parenthesis
Plugin 'gorkunov/smartpairs.vim'

" Linting with Isort flake8 (pep8)
Plugin 'nvie/vim-flake8'

" pep8-ident
Plugin 'vimjas/vim-python-pep8-indent'

" Check syntax
Plugin 'scrooloose/syntastic'

" Beautify code
let python_highlight_all=1
syntax=1

" Autocomplete for python
Plugin 'Valloric/YourCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" All of your Plugins must be added before the following line
call vundle#end() " required
filetype plugin indent on " required
"
" Brief list of commands
" :PluginList - Lists configured plugins
" :PluginInstall - Installs plugins; append '!' to update or use :PluginUpdate
" :PluginSearch foo - searches for foo; append '!' to refresh local cache
" :PluginClean - confirms removal of unused plugins; append '!' to
" auto-approve removal
" see :h vundle for more details or wiki for FAQ


" Make backspace behavior sane
 set backspace=indent,eol,start

" Switch sytex highlighting on
syntax on

" Enable file type detection and do language-dependent identing
filetype plugin indent on

" Show line numbers
set number

" Allow hidden buffers, don't limit to  file per window/split
set hidden

" Pythonic tabs using 4 white spaces(pep8)
set autoindent nosmartindent 
set smarttab
set expandtab
set shiftwidth=4
set softtabstop=4

" Specify endoffile and tab characters
set listchars=eol:¬,tab:▷\

" Python tell -> highlight 80th Char
set colorcolumn=80
highlight ColorColumn ctermbg=5

" Configure Isort for linting
map <leader>i :Isort<cr>
command! -range=% Isort :<line1>,<line2>! isort -
