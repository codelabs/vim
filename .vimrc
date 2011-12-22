
set encoding=utf-8
set nu
set numberwidth=5
set title
set iskeyword+=:
set ts=4
"set textwidth=150
syn sync fromstart

" Indentation

set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4

" Search

set smartcase

" History

set history=50

" Matching braces, brackets

set showmatch

" Status Bar

set showmode
set laststatus=2
set ruler
set showcmd
let next_status=1

" Cursor Line

set cursorline

" My Colors or Syntax Highlighting

syntax on
"let perl_include_pod = 1
let perl_extended_vars = 1
let want_scope_in_variables = 1

colorscheme dileep

" Auto Commands

autocmd Syntax * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd Syntax * match TODO /TODO:/
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" Load Skeletons

autocmd BufNewFile *.pl 0r ~/vim/skeleton.pl
autocmd BufNewFile *.pm 0r ~/vim/skeleton.pm

" Syntax check for perl files when <F1> is pressed
autocmd FileType perl map <F1> :!/usr/local/bin/perl -c %<Return>

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set foldlevel=1
let perl_fold = 1
"set nofoldenable        "dont fold by default

" Directory Listing
let g:netrw_list_hide='^\.,\~$'
let g:netrw_winsize=20

