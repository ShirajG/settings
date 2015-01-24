call pathogen#infect()
syntax enable
set encoding=utf-8
set showcmd
colorscheme molokai
" Enable filetype plugins
filetype plugin on
filetype indent on
" remap {<CR> to auto insert closing parens, and move to the middle
inoremap {<CR> {<CR>}<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap (<CR> (<CR>)<Esc>ko
" Set to auto read when a file is changed from the outside
set autoread
set expandtab 
set tabstop=2
set shiftwidth=2
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7
"Remap exit insert mode to jj
inoremap jj <ESC>
inoremap kk <ESC>
inoremap hh <ESC>
"Use ctrl h to cycle tabs
nnoremap <C-h> gT
" Ignore compiled files
set wildignore=*.o,*~,*.pyc
" Ignore case when searching
set ignorecase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
" Show line numbers
set number
" Don't redraw while executing macros (good performance config)
set lazyredraw
" Show matching brackets when text indicator is over them
set showmatch
set runtimepath^=~/.vim/bundle/ctrlp.vim
map <C-k><C-b> :NERDTreeToggle<CR>
"Add Powerline styled status bar
" These lines setup the environment to show graphics and colors correctly.
set nocompatible
set t_Co=256
let g:minBufExplForceSyntaxEnable = 1
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2 " Always display the statusline in all windows
set guifont=Inconsolata\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
