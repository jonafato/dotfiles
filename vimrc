set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" github repositories
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'gregsexton/MatchTag'
Plugin 'gmarik/Vundle.vim' " required!
Plugin 'godlygeek/tabular'
Plugin 'haya14busa/incsearch.vim'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'mhinz/vim-startify'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'othree/html5.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'suan/vim-instant-markdown'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/TaskList.vim'
Plugin 'wting/rust.vim'
Plugin 'zah/nimrod.vim'

call vundle#end()
filetype plugin indent on  " required!

" Use , instead of \
let mapleader=","

autocmd BufNewFile,BufReadPost *.md set filetype=markdown  " Properly identify markdown files

" Replace search with incsearch
map / <Plug>(incsearch-forward)
" Replace backward search with backward incsearch
map ? <Plug>(incsearch-backward)

let g:SuperTabDefaultCompletionType="context"

" Use Ctrl-t to open a new tab with startify
map <C-t> :tabnew<CR>:Startify<CR>
let g:startify_change_to_dir=0  " Don't change to the directory of the file being opened
let g:startify_change_to_vcs_root=1  " Always start from the root of the repository (if applicable)
let g:startify_list_order=[[' Sessions'], 'sessions', [' Current Directory'], 'dir', [' All Files'], 'files', [' Bookmarks'], 'bookmarks']  " This order makes more sense to me

" Use ,n to toggle the nerdtree sidebar
nnoremap <Leader>n :NERDTreeToggle<CR>

let g:NERDTreeChDirMode=2
let g:NERDTreeRespectWildIgnore=1  " Use wildignore for nerdtree
let g:NERDTreeShowHidden=1  " Show hidden files
let g:NERDTreeDirArrows=1  " Show nerdtree arrows

set wildignore+=*.pyc,*/*.egg-info/*  " Python incidentals
set wildignore+=node_modules  " npm installed files
set wildignore+=.git,.hg  " Source control
set wildignore+=*.sw?  " Swap files
set wildignore+=*.jpg,*.jpeg,*.gif,*.png  " Images

let g:ctrlp_reuse_window='startify'  " Let ctrlp reuse the startify window

set laststatus=2  " Always show airline
set noshowmode
let g:airline_powerline_fonts=1  " Use powerline fonts with airline
let g:airline_theme="solarized"  " Solarized colors!
let g:airline#extensions#tabline#enabled=1  " Airline tabline

let g:instant_markdown_slow=1  " Only have instant markdown render and refresh on save

syntax on  " Syntax highlighting
set bg=light  " Light background
let g:solarized_termtrans=1
colorscheme solarized  " Solarized colors!
set colorcolumn=80  " A good rule of thumb for code width
set tabstop=4  " Tabs are 4 spaces wide
set shiftwidth=4  " Shifting 4 spaces at a time
set smarttab
set expandtab  " Tabs convert to spaces
set softtabstop=4  " Tabs are 4 actual spaces
set printoptions=paper:A4,syntax:y,wrap:y,number:y  " When do I print?

set clipboard=unnamedplus  " Use the system clipboard
set completeopt-=preview

" make searching better
set incsearch
set ignorecase
set smartcase

set wildmenu

" No shift needed
nnoremap ; :
" No shift needed
vnoremap ; :
set scrolloff=2

nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

if has('mouse')
    set mouse=a  " Mouse support everywhere
endif
