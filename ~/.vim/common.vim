" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

" Mouse and backspace
set mouse=a
set bs=2     " make backspace behave like normal again

" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" force 256 colors support
set t_Co=256

" Enable syntax highlighting
filetype off
filetype plugin indent on
syntax on
" enable all Python syntax highlighting features
let python_highlight_all = 1

" Automaticlly indent when adding a curly barket, ...
set smartindent

" show the matching part of the pair for [] {} and ()
set showmatch

" show a visual line under the cursor's current line
set cursorline

" Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" easier formatting of paragraphs
vmap Q gq
nmap Q gqap

set history=700
set undolevels=700

"set tabstop=4
"set softtabstop=4
"set shiftwidth=4
"set shiftround
"set expandtab
set smarttab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile


set ruler            " show line number, cursor position
set showcmd          " show incomplete commands

au BufRead,BufNewFile *.less set filetype=css

" fixes for status line
set timeoutlen=50
set laststatus=2

" Netrw settings
let g:netrw_altv              = 1
let g:netrw_liststyle         = 1

set cm=blowfish2 "change crypto algo to better one
set wildignore+=*.pyc,*.o,*.class,*.lo,.git,vendor/*,node_modules/**,bower_components/**

" undo changes backups
set undodir=~/.cache " better be on a tmpfs type mount point
set undofile
set undoreload=10000


" File Types special configs
autocmd FileType php,python,java,cs setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

autocmd BufNewFile,BufRead *.txt,*.md setlocal spell spelllang=en_us,fr textwidth=78
autocmd FileType mail setlocal spell spelllang=en_us,fr textwidth=78

set wildmenu " Turn on WiLd menu
