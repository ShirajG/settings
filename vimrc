let mapleader="\<Space>"
let g:neoterm_autoscroll=1
let g:neoterm_default_mod='vertical' " Where a new REPL opens, :help mods for all options.

call plug#begin('~/.vim/plugged')
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'
Plug 'kassio/neoterm' " REPLs
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree' " File Browser
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-rails' " Rails helpers
Plug 'ntpeters/vim-better-whitespace' " Whitespace highlighter
Plug 'ap/vim-buftabline' "Performant, simple, buffer listing
Plug 'jiangmiao/auto-pairs' " Insert paired brackets
Plug 'tomtom/tcomment_vim' " Commenting
Plug 'airblade/vim-gitgutter' " Git gutter icons
Plug 'plasticboy/vim-markdown' " Markdown support
Plug 'tpope/vim-surround' " Surround text
Plug 'mattn/emmet-vim' " Emmet
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Async Autocomplete
" Plug 'SirVer/ultisnips' " Snippet Engine
Plug 'honza/vim-snippets' " Snippets
Plug 'ryanoasis/vim-devicons' " Filetype Icons
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Filetype highlighting in explorer
Plug 'qpkorr/vim-bufkill' " Close buffer without losing the split pane
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' } " fuzzy finder
Plug 'junegunn/fzf.vim' " fzf vim plugin
Plug 'tpope/vim-repeat' " better repeat functionality
Plug 'tpope/vim-endwise' " adds 'end' after def, if, do etc.. in ruby
Plug 'mustache/vim-mustache-handlebars' " Handlebars syntax
Plug 'machakann/vim-highlightedyank'
Plug 'elzr/vim-json' "Better JSON syntax
Plug 'ngmy/vim-rubocop' "Rails best practices
Plug 'csscomb/vim-csscomb' " CSS auto reformat
" Plug 'vim-airline/vim-airline' " Status line
" Plug 'vim-airline/vim-airline-themes' " Status line themes
" Plug 'posva/vim-vue' " Vue syntax
" Plug 'haya14busa/incsearch.vim'
" Plug 'haya14busa/incsearch-fuzzy.vim'
"Plug 'floobits/floobits-neovim'
" Plug 'autozimu/LanguageClient-neovim', {
" \ 'branch': 'next',
" \ 'do': 'bash install.sh',
" \ }
" Plug 'neoclide/coc.nvim', {'tag': '*', 'do': 'yarn install'} " Better code completion
" Plug 'docunext/closetag.vim' " Auto generates XHTML closing tags
" Plug 'mileszs/ack.vim' " fast Text/File search
" Plug 'Yggdroot/indentLine'
" Plug 'shirajg/golden-ratio'
" Plug 'arcticicestudio/nord-vim' " Colorscheme
" Plug 'brooth/far.vim' " Global Find and Replace
" Plug 'ludovicchabant/vim-gutentags' " Automatic Tag management
" Plug 'isRuslan/vim-es6' " es6 Syntax
" Plug 'morhetz/gruvbox' " Colorscheme
Plug 'tpope/vim-fugitive' " Git Client
Plug 'w0rp/ale' " Async Lint engine

" Code Formatting
" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
" Plug 'google/vim-maktaba'
" Plug 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
" Plug 'google/vim-glaive'
" End Code Formatting
call plug#end()

" set termguicolors

" set listchars=eol:¬
set listchars=tab:•\ ,eol:¬
set list!

let g:gruvbox_italic=1
colorscheme solarized
" colorscheme gruvbox
" colorscheme nord
syntax on
set hlsearch
set lazyredraw
set synmaxcol=300
" set background=dark
set background=light
set nobackup
set nowritebackup
set noswapfile
set noshowmode
set hidden
set backspace=indent,eol,start
set ruler
set cursorline
set showcmd
set mouse=a
set autoread
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set scrolloff=5
set wildignore=*.o,*~,*.pyc,*.log
set ignorecase
set incsearch
set number
set relativenumber
set visualbell
set showmatch
set shell=/bin/zsh
set laststatus=0
set noshowmode
set noruler
set noshowcmd
set completeopt-=preview
set clipboard^=unnamed
set foldmethod=indent
set foldlevelstart=99
set tags=./tags
set iskeyword-=_
set inccommand=nosplit
" Better display for messages
set cmdheight=2
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
" always show signcolumns
set signcolumn=yes
" vertical splits open to the right
set splitright

" let g:LanguageClient_serverCommands = {
" \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
" \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
" \ 'ruby': ['tcp://127.0.0.1:7658'],
" \ }


let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'
" let g:airline_theme='gruvbox'
" let g:airline_theme='nord'
" let g:airline#extensions#tabline#fnamemod = ':t'

" let g:deoplete#enable_at_startup=1
" call deoplete#custom#option({
" \ 'keyword_patterns': {
" \   'ruby': '[a-zA-Z_]\w*[!?]?'
" \ }
" \})
" call deoplete#custom#source('ultisnips', 'rank', 1)

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:NERDTreeShowBookmarks=1
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeChDirMode=2
let g:NERDTreeHijackNetrw=1

" ALE settings
" let g:ale_sign_column_always=1
" let g:ale_lint_delay=400
" let g:ale_lint_on_text_changed='insert'
" let g:ale_sign_error = '⚠'
" let g:ale_sign_warning = '�'
" let g:ale_sign_error = '!'
" let g:ale_sign_warning = '?'
" let g:ale_linters = {
" \ 'eruby': ['erb', 'HTMLHint'],
" \ 'javascript': ['eslint'],
" \ 'ruby': ['rubocop', 'rails_best_practices']
" \}

" let g:python_host_prog  = "/usr/local/bin/python"
let g:python3_host_prog = "/usr/local/bin/python3"

let g:indentLine_char ='|'
let g:indentLine_color_gui = '#555555'

"Disable the command palette for now, I never use it
" cmap W <NOP>

" Send current file to REPL buffer
map <Leader>\ :TREPLSendFile<CR>

"Close files, if file was in a split, leave split open
map <Leader>w :BD<CR>

"Terminal Mode
tnoremap <Esc> <C-\><C-n>

" c: clear
nnoremap <Leader>c :nohl<CR>
" ft: Find Text
nnoremap <Leader>ft :Ag<CR>
" Finds the selected text
vnoremap <Leader>ft y:Ag <C-R>"<CR>
" Replace all instances of selected text
vnoremap <Leader>rt y:%s/<C-R>0/
" ff: Find File
nnoremap <Leader>ff :GFiles<CR>

" fp: Explore Project
nnoremap <Leader>ep :NERDTreeToggle<CR>
map <leader>- :NERDTreeFind<cr>

"id: insert Date
nnoremap <Leader>id :r !date -v +0d "+\%A, \%B \%d, \%Y"

nnoremap <Leader>z za
" nnoremap <Leader>gs :vert :Gstatus<CR>
" nnoremap <Leader>ga :Gwrite<CR>
" nnoremap <Leader>gc :Gcommit<CR>
" nnoremap <Leader>gp :Gpush<CR>

"Window navigation commands
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
" nnoremap <Leader>= <C-w><
" nnoremap <Leader>- <C-w>>

"Paste with auto indent
":nnoremap <c-p> p=`]

"switch buffers with Leader and [ or ]
map <leader>] :bn<CR>
map <leader>[ :bp<CR>

" Always move down visual lines
" nmap j gj
" nmap k gk

"exit insert mode faster
inoremap jj <ESC>
inoremap jk <ESC>
inoremap kj <ESC>
inoremap kk <ESC>

nnoremap <Leader>p <Nop>

autocmd BufWritePre * StripWhitespace
autocmd BufLeave,FocusLost * silent! wall

"Disable line highlights when in insert mode
autocmd InsertEnter * set nocul
autocmd InsertLeave * set cul

" autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
" autocmd! BufWritePost * Neomake
autocmd BufWritePre,FileWritePre *.css,*.less,*.scss,*.sass silent! :CSScomb

highlight Comment cterm=italic

au BufReadPost *.inky set syntax=html
au BufReadPost *.es6 set syntax=javascript
augroup filetype javascript syntax=javascript

" Incsearch/fuzzy
"let g:incsearch#auto_nohlsearch = 1
"map /  <Plug>(incsearch-forward)
"map ?  <Plug>(incsearch-backward)

" Search for visual selection, escape escape chars, not as regex
vnoremap // y/\V<C-r>=escape(@",'/\')<CR><CR>
" map g/ <Plug>(incsearch-stay)
" map <Leader>/ <Plug>(incsearch-fuzzy-/)
" map <Leader>? <Plug>(incsearch-fuzzy-?)
" map <Leader>g/ <Plug>(incsearch-fuzzy-stay)
"
"
" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Window/cursor memory when switching buffers, from: http://vim.wikia.com/wiki/Avoid_scrolling_when_switch_buffers
" Save current view settings on a per-window, per-buffer basis.
function! AutoSaveWinView()
    if !exists("w:SavedBufView")
        let w:SavedBufView = {}
    endif
    let w:SavedBufView[bufnr("%")] = winsaveview()
endfunction

" Restore current view settings.
function! AutoRestoreWinView()
    let buf = bufnr("%")
    if exists("w:SavedBufView") && has_key(w:SavedBufView, buf)
        let v = winsaveview()
        let atStartOfFile = v.lnum == 1 && v.col == 0
        if atStartOfFile && !&diff
            call winrestview(w:SavedBufView[buf])
        endif
        unlet w:SavedBufView[buf]
    endif
endfunction

" When switching buffers, preserve window view.
if v:version >= 700
    autocmd BufLeave * call AutoSaveWinView()
    autocmd BufEnter * call AutoRestoreWinView()
endif

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
