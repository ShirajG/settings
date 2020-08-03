let mapleader="\<Space>"
let g:neoterm_autoscroll=1
let g:neoterm_default_mod='vertical' " Where a new REPL opens, :help mods for all options.

call plug#begin('~/.vim/plugged')
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'
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
Plug 'honza/vim-snippets' " Snippets
Plug 'ryanoasis/vim-devicons' " Filetype Icons
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Filetype highlighting in explorer
Plug 'qpkorr/vim-bufkill' " Close buffer without losing the split pane
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' } " fuzzy finder
Plug 'junegunn/fzf.vim' " fzf vim plugin
Plug 'junegunn/vim-emoji' " emojis in vim plugin
Plug 'tpope/vim-repeat' " better repeat functionality
Plug 'tpope/vim-endwise' " adds 'end' after def, if, do etc.. in ruby
Plug 'mustache/vim-mustache-handlebars' " Handlebars syntax
Plug 'machakann/vim-highlightedyank'
Plug 'elzr/vim-json' "Better JSON syntax
Plug 'ngmy/vim-rubocop' "Rails best practices
Plug 'tpope/vim-fugitive' " Git Client
Plug 'dense-analysis/ale' " Async Lint engine
Plug 'easymotion/vim-easymotion'
" Plug 'posva/vim-vue' " Vue syntax
" Plug 'isRuslan/vim-es6' " es6 Syntax
" Plug 'morhetz/gruvbox' " Colorscheme
" Plug 'prettier/vim-prettier', { 'do': 'npm install' }

call plug#end()

" set termguicolors

" set listchars=eol:¬
" set listchars=tab:•\ ,eol:¬
set listchars=tab:•\
set list!

" Prettier Settings
let g:prettier#autoformat = 0

let g:gruvbox_italic=1
colorscheme solarized
" colorscheme gruvbox
" colorscheme nord
syntax on
set hlsearch
set lazyredraw
set synmaxcol=300
set background=dark
" set background=light
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
set laststatus=2
set statusline=
set statusline+=%{FugitiveStatusline()}
set statusline+=%=
set statusline+=%f
set noshowmode
set noruler
set noshowcmd
set completeopt-=preview
set completefunc=emoji#complete
set clipboard^=unnamed
set foldmethod=indent
set foldlevelstart=99
set tags=./tags
set iskeyword-=_
set inccommand=nosplit
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Better display for messages
set cmdheight=2
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
" always show signcolumns
set signcolumn=yes
" vertical splits open to the right
set splitright
" Ruler at column 80
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

let g:airline_theme='solarized'


let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:NERDTreeShowBookmarks=1
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeChDirMode=2
let g:NERDTreeHijackNetrw=1

" ALE settings
let g:ale_sign_column_always=1
let g:ale_lint_delay=400
let g:ale_lint_on_text_changed='insert'
let g:ale_sign_error = '⚠'
let g:ale_sign_warning = '�'
let g:ale_sign_error = '!'
let g:ale_sign_warning = '?'
let g:ale_linters = {
\ 'eruby': ['erb', 'HTMLHint'],
\ 'javascript': ['eslint'],
\ 'ruby': ['rubocop', 'rails_best_practices']
\}
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\}

" let g:python_host_prog  = "/usr/local/bin/python"
let g:python3_host_prog = "/usr/local/bin/python3"

let g:indentLine_char ='|'
let g:indentLine_color_gui = '#555555'

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
" Search for selected text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
"" Replace all instances of selected text
vnoremap <Leader>rt y:%s/<C-R>0//g<Left><Left>
" ff: Find File
nnoremap <Leader>ff :GFiles<CR>

" fp: Explore Project
nnoremap <Leader>ep :NERDTreeToggle<CR>
map <leader>- :NERDTreeFind<cr>

"id: insert Date
nnoremap <Leader>id :r !date -v +0d "+\%A, \%B \%d, \%Y"

nnoremap <Leader>z za
nnoremap <Leader>gs :vert :Gstatus<CR>
nnoremap <Leader>ga :Gwrite<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gp :Gpush<CR>

"Window navigation commands
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l

"switch buffers with Leader and [ or ]
map <leader>] :bn<CR>
map <leader>[ :bp<CR>

"exit insert mode faster
inoremap jj <ESC>
inoremap jk <ESC>
inoremap kj <ESC>
inoremap kk <ESC>
nnoremap <Leader>p "0p

autocmd BufWritePre * StripWhitespace
autocmd BufLeave,FocusLost * silent! wall

"Disable line highlights when in insert mode
autocmd InsertEnter * set nocul
autocmd InsertLeave * set cul

highlight Comment cterm=italic

au BufReadPost *.inky set syntax=html
au BufReadPost *.es6 set syntax=javascript
augroup filetype javascript syntax=javascript

" Search for visual selection, escape escape chars, not as regex
vnoremap // y/\V<C-r>=escape(@",'/\')<CR><CR>

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

" =============================================================================
" Default CoC Settings ========================================================
" =============================================================================
"
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

let g:coc_snippet_next = '<tab>'

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Sets up fzf to search only within file content, not file names
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}), <bang>0)

