" Setting --------------------------------------------------------

" This setting prevents vim from emulating the original vi's bugs and limitations.
set nocompatible 

" Disable swapfile creation (*.swp files)
set noswapfile 

filetype plugin on

" Set line height
set linespace=6

" Search optoins
set incsearch " Search as you type
set ignorecase
set smartcase
set wildmode=longest,list
set hlsearch " Highlight Searching
set laststatus=2 " Always show the status line

" Tab & indent settings -------------------------------------------
set shiftwidth=2
set tabstop=2
"set expandtab " Spaces for tabs
set smarttab
set smartindent "Auto adds and indent after a '{'
set autoindent
" set copyindent "copy the previous indentation on autoindenting

" Line numbers
"set number
set nonumber

" Display last command
set showcmd

" set showmode " Show editing mode
set showmode

" Turn off annoying sounds
set noerrorbells
set novisualbell
set t_vb=

" Switch between buffers without saving
set hidden

" Split windows below the current window.
set splitbelow

" Map commands ----------------------------------------------------

" Be quicker - change : for space
nmap <space> :
" Quicker switching to command mode
imap jj <Esc>


" Vundle plugin manager -------------------------------------------

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree' " File browser
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim' " Fuzzy finder Ctrl-p
Plugin 'valloric/youcompleteme'
Plugin 'mattn/emmet-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'sjl/gundo.vim' " Git tree view
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Emmet Ctrl-z,
let g:user_emmet_leader_key='<C-z>'

" Nerd Tree Ctrl + n
map <C-n> :NERDTreeToggle<CR>

" Gundo - Git tree view F5
nnoremap <F5> :GundoToggle<CR>


