
set nocompatible
call pathogen#infect()
syntax on
filetype plugin on
filetype indent on
colorscheme monokai
set nobackup
set nowritebackup
set noswapfile
set noshowmode
set hidden
set backspace=indent,eol,start
set ruler
set cursorline
set encoding=utf-8
set showcmd
set mouse=a
set autoread
set expandtab
set tabstop=2
set shiftwidth=2
set so=7
set wildignore=*.o,*~,*.pyc
set ignorecase
set hlsearch
set incsearch
set relativenumber
set number
set visualbell
set lazyredraw
set showmatch
set runtimepath^=~/.vim/bundle/ctrlp.vim
set laststatus=2

" GVim Options
set guifont=Mononoki\ 12
set guioptions-=m "hide Menu
set guioptions-=T "hide toolbar
set guioptions-=L
set guioptions-=r
set guioptions=ac
set clipboard^=unnamedplus

"folding settings
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

" use j and k to get to normal mode
inoremap jj <ESC>
inoremap kk <ESC>
" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :w<CR>
vnoremap <C-S> <C-C>:w<CR>
inoremap <C-S> <C-O>:w<CR>

nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1

" search for visually hightlighted text
vnoremap <c-f> y<ESC>/<c-r>"<CR>

set t_Co=256
let g:minBufExplForceSyntaxEnable = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='zenburn'
"let g:neocomplete#enable_at_startup = 1
"let g:neocomplete#sources#syntax#min_keyword_length = 3
" Enable buffer list
set completeopt-=preview
nmap <leader>] :bnext<CR>
nmap <leader>[ :bprevious<CR>
nmap <leader>x :bd<CR>

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<Enter>']
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']


" Ctrl P settings=================================================
let g:ctrlp_show_hidden=1
let g:ctrlp_custom_ignore='\v[\/](node_modules|target|dist|tmp)|(\.(swp|ico|git|svn))$'

" Syntastic Syntax Checker
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_ruby_checkers = ['rubocop']

" Vim Arduino Plugin
let g:vim_arduino_ino_cmd = 'ano'

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd BufWritePre,FileWritePre *.css,*.less,*.scss,*.sass silent! :CSScomb
autocmd BufWritePre * StripWhitespace
autocmd BufLeave,FocusLost * silent! wall
"Enable Current line highlighting only in normal mode
autocmd InsertEnter * set nocul
autocmd InsertLeave * set cul

"Enable Silver Searcher
set runtimepath^=~/.vim/bundle/ag

if has('gui_running')
  " Autoload last session
  let g:session_autoload='yes'
  let g:session_autosave='yes'
  map <C-Tab> :bnext<CR>
  map <C-S-Tabn> :bprevious<CR>
else
  let g:session_autoload='no'
  let g:session_autosave='no'
endif

noremap <buffer> <silent> k gk
noremap <buffer> <silent> j gj
