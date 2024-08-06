" Show the lightline.vim status bar
set laststatus=2

" Disable unncecessary statusline information
set noshowmode

" Set colors if GUI is running
if !has('gui_running')
  set t_Co=256
endif

" enable clipboard
set clipboard+=unnamedplus

" disable swapfile
set noswapfile

" display line numbers
set number

" copy indent from current line when starting a new line
set autoindent

" use 4 spaces instead of tab ()
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Show substitution
set inccommand=nosplit

nnoremap <space> <nop>
let mapleader = "\<space>"

nnoremap <leader>bn :bn<cr> ;buffer next
nnoremap <leader>tn gt ;new tab

nnoremap <c-w>h <c-w>s

" Display invisible characters
" set listchars=tab:→\ ,space:· ",nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»
set list

" Set column length and incidate characters exceeding the length
" set colorcolumn=81
