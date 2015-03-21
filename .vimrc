" Setting ---------------------------------------------------------------------------------------------------"

set nocompatible " This setting prevents vim from emulating the original vi's bugs and limitations.

set noswapfile " Disable swapfile creation (*.swp files)

filetype plugin on

set linespace=6 "Set line height

" Search optoins
set incsearch " Search as you type
set ignorecase
set smartcase
set wildmode=longest,list

set hlsearch "Highlight Searching

syntax on " Turn on syntax highlighting

colorscheme desert
set showmatch
hi MatchParen cterm=bold ctermbg=none ctermfg=white

set laststatus=2 "Always show the status line

" Tab & indent settings
set shiftwidth=4
set tabstop=4
"set expandtab " Spaces for tabs
set smarttab
set smartindent "Auto adds and indent after a '{'
set autoindent
set copyindent "copy the previous indentation on autoindenting

set number " Line numbers

set showcmd " Display last command

set showmode " Show editing mode

set mousehide "Hide mouse when typing

"Turn off annoying sounds
set noerrorbells
set novisualbell
set t_vb=

set guioptions-=T " Don't display toolbar

set hidden "Switch between buffers without saving

" Set a different font from the default
set guifont=Ubuntu\ Mono\ 14

set splitbelow "Split windows below the current window.

" Map commands ----------------------------------------------------------------------------------------- "

" Appends the current date and time after the cursor
" like this => Sun 27 Feb 2011 21:28:56 GMT
map <F2> a<C-R>=strftime("%c")<CR><Esc>

" Be quicker - change : for space
nmap <space> :
" Quicker switching to command mode
imap jj <Esc>

" Quicker editing of vimrc file...
nmap \v :e $MYVIMRC<CR>
" ...and zshrc
nmap \zsh :e ~/.zshrc<CR>

" Map some window commands - quicker that Ctrl-Shift-W-...
" Open a new window
nmap \w <C-W>n
" Open a new tab
nmap \tn :tabnew<CR>
" Close current window or tab
nmap \wc <C-W>c
" Close all other window
nmap \wo <C-W>o
" Split current window
nmap \ws <C-W>s
" Split current window vertically
nmap \wv <C-W>v

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
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'mattn/emmet-vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'matchit.zip'
Plugin 'FuzzyFinder'
Plugin 'pangloss/vim-javascript'
Plugin 'justinmk/vim-sneak'

" All of your Plugins must be added before the following line
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



" Autocomplete plugin
" let g:neocomplcache_enable_at_startup = 1

" NERDTree settings
nmap \n :NERDTreeToggle<CR>

