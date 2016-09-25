" Setting ---------------------------------------------------------------------------------------------------"

set nocompatible " This setting prevents vim from emulating the original vi's bugs and limitations.

set noswapfile " Disable swapfile creation (*.swp files)

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

" Tab & indent settings
set shiftwidth=2
set tabstop=2
"set expandtab " Spaces for tabs
set smarttab
set smartindent "Auto adds and indent after a '{'
set autoindent
set copyindent "copy the previous indentation on autoindenting

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

" Don't display toolbar
set guioptions-=T

" Switch between buffers without saving
set hidden

" Set a different font from the default
set guifont=Roboto\ Mono\ 11

" Split windows below the current window.
set splitbelow

" Map commands ----------------------------------------------------------------------------------------- "

" Be quicker - change : for space
nmap <space> :
" Quicker switching to command mode
imap jj <Esc>

" Quicker editing of vimrc file...
nmap \v :e $MYVIMRC<CR>
" ...and zshrc
nmap \z :e ~/.zshrc<CR>

" Ctrl-s to save...
nmap <C-s> :w<CR>
" ...and in insert mode too
imap <C-s> <Esc>:w<CR>a

" Copy visual selection to system clipboard
vmap \c <Esc>"+y

"Shortcut to fold tags with leader (usually \) + ft
nnoremap <leader>ft Vatzf

" 'Bubble' single line of text
" http://vimcasts.org/episodes/bubbling-text/
nmap <C-Up> ddkP
nmap <C-Down> ddp
" 'Bubble' multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

" Abrevations ---------------------------------------------------------------------------------------------"
"In insert mode type 'lorem' and press space to expand to a full sentence...
iab lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
"...and 'llorem' for a full paragraph
iab llorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.


" Plugins ------------------------------------------------------------------------------------------------ "
" Vundle plugin manager

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'matchit.zip'
Plugin 'FuzzyFinder'
Plugin 'pangloss/vim-javascript'
Plugin 'justinmk/vim-sneak'
Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ntpeters/vim-better-whitespace'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Colour scheme
syntax on
set background=dark

if has ("gui_running")
	"colorscheme solarized
	colorscheme xoria256

	" Hide scrollbars
	set guioptions-=R
	set guioptions-=r
	set guioptions-=l
	set guioptions-=L
	set guioptions-=R
endif

highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

" Remap Emmet
"let g:user_emmet_expandabbr_key='<Tab>'
"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" NERDTree settings
nmap \n :NERDTreeToggle<CR>

" Fuzzy Finder
map <C-p> :FufBuffer<CR>

