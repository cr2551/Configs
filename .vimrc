if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
" filetype plugin indent on

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
" set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)


" my configs:
" set hlsearch
set history=1000

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

nnoremap <C-@> :call system("wl-copy", @")<CR>

" Source a global configuration file if available
" if filereadable("/etc/vim/vimrc.local")
"  source /etc/vim/vimrc.local
" endif

" Remap the CapsLock key to be Esc inside Vim
au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

" add number lines
set number
" set nocompatible
" enable autocompletion
" set wildmenu

" set wildmode=list:longest
" set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
" press zo to open the folds
" PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.
" call plug#begin('~/.vim/plugged')

" call plug#end()
" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

augroup filetype_txt
    autocmd!
    autocmd FileType txt setlocal foldmethod=marker
augroup END


" }}}
" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}
