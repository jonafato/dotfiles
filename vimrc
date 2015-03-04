set nocompatible              " be iMproved

call plug#begin('~/.vim/bundle')

Plug 'altercation/vim-colors-solarized'  " Solarized, for happy eyes
Plug 'ashisha/image.vim'  " Don't blow up on images
Plug 'bling/vim-airline'  " A light, vim-only powerline-like
Plug 'ConradIrwin/vim-bracketed-paste'  " Never :set paste again!
Plug 'chase/vim-ansible-yaml'  " Better handling of yaml for ansible playbooks
Plug 'ctrlpvim/ctrlp.vim'  " Fuzzymatching
Plug 'davidhalter/jedi-vim'  " Better python tooling
Plug 'ervandew/supertab'  " Tab completion
Plug 'gregsexton/MatchTag'  " Highlight matching html tags
Plug 'godlygeek/tabular'  " For handling tabular data
Plug 'haya14busa/incsearch.vim'  " Better incremental search options
Plug 'heavenshell/vim-pydocstring'  " Autogenerate python doctrings
Plug 'jmcantrell/vim-virtualenv'  " Find virtualenv things inside python
Plug 'lepture/vim-jinja'  " Jinja syntax
Plug 'mattn/gist-vim'  " Manage gists from within vim
Plug 'mattn/webapi-vim'  " Required by gist-vim
Plug 'MarcWeber/vim-addon-local-vimrc'  " Safely and automatically load local vimrc files if they exist
Plug 'mhinz/vim-startify'  " Start screen
Plug 'othree/html5.vim'  " Newer html syntax support
Plug 'rking/ag.vim'  " Use ag within vim
Plug 'scrooloose/nerdtree'  " File browser
Plug 'scrooloose/nerdcommenter'  " Quickly (un)comment code
Plug 'scrooloose/syntastic'  " Work with external syntax checkers
Plug 'suan/vim-instant-markdown'  " Live in-browser previews of markdown files
Plug 'tpope/vim-fugitive'  " Git support
Plug 'vim-scripts/C64.vim'  " For nostalgia
Plug 'vim-scripts/SearchComplete'  " Tab complete search terms
Plug 'vim-scripts/Tabmerge'  " Move tabs to splits
Plug 'vim-scripts/TaskList.vim'  " Find todos scattered throughout code
Plug 'wting/rust.vim'  " Rust syntax support
Plug 'zah/nimrod.vim'  " Nim syntax support

call plug#end()

" Use , instead of \
let mapleader=","

autocmd BufNewFile,BufReadPost *.md set filetype=markdown  " Properly identify markdown files

" Replace search with incsearch
map / <Plug>(incsearch-forward)
" Replace backward search with backward incsearch
map ? <Plug>(incsearch-backward)
let g:incsearch#auto_nohlsearch=1 " Turn off result highlighting after moving cursor

let g:SuperTabDefaultCompletionType="context"

let g:syntastic_check_on_open=1  " Check syntax immediately when opening a file
let g:syntastic_always_populate_loc_list=1  " Make navigating bug list easier
let g:syntastic_aggregate_errors=1  " Show errors from multiple checkers together

" Use Ctrl-t to open a new tab with startify
map <C-t> :tabnew<CR>:Startify<CR>
let g:startify_change_to_dir=0  " Don't change to the directory of the file being opened
let g:startify_change_to_vcs_root=1  " Always start from the root of the repository (if applicable)
" This order makes more sense to me
let g:startify_list_order=[[' Sessions'], 'sessions', [' Current Directory'], 'dir', [' All Files'], 'files', [' Bookmarks'], 'bookmarks']

" Code highlighting in fenced codeblocks
let g:markdown_fenced_languages = ['json']

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
let g:ctrlp_user_command='ag %s --files-with-matches --nocolor -g ""'
let g:ctrlp_use_caching=0

let g:rainbow_active=1

set laststatus=2  " Always show airline
set noshowmode
let g:airline_powerline_fonts=1  " Use powerline fonts with airline
let g:airline_theme="solarized"  " Solarized colors!
let g:airline#extensions#tabline#enabled=1  " Airline tabline
let g:airline#extensions#virtualenv#enabled=1  " Virtualenv display
let g:airline#extensions#tabline#tab_nr_type=2 " Show number of splits and tab number

let g:instant_markdown_slow=1  " Only have instant markdown render and refresh on save

let g:gist_clip_command='xclip -selection clipboard'  " For copying on Linux
let g:gist_detect_filetype=1  " Autodetect filetype
let g:gist_open_browser_after_post=1  " To see the gist once it's been posted
let g:gist_show_privates=1  " Show private gists in list
let g:gist_post_private=1  " Use private gists by default (just in case)

syntax on  " Syntax highlighting
set bg=light  " Light background
let g:solarized_termtrans=1
silent! colorscheme solarized  " Solarized colors (if available, ignored otherwise)!

set number
set backspace=indent,eol,start
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
