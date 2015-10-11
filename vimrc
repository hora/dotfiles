set bs=2 " required for Vundler
filetype on " required for Vundler

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'jlanzarotta/bufexplorer'            " easy buffering
Plugin 'altercation/vim-colors-solarized'   " solazired colour scheme
Plugin 'kien/ctrlp.vim'                     " fuzzy file finder
Plugin 'Raimondi/delimitMate'               " insert mode auto-completion for quotes, brackets, etc
Plugin 'scrooloose/nerdcommenter'           " easy commenting
Plugin 'scrooloose/nerdtree'                " directory browser
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'} " powerline status bar
Plugin 'tpope/vim-surround'                 " easy surround manipulations

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set clipboard+=unnamed " copy yanks to clipboard

"set guifont=Consolas:h10:cANSI
"au GUIEnter * simalt ~x

syntax enable
set background=dark
colorscheme solarized

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set number
set nowrap " don't wrap lines
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set showmatch "show matching parens
set ignorecase " ignore case when searching
set smartcase " ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch " highlight search terms
set incsearch " show search matches as you type
set mouse=a " adds mouse scrolling

" put swap files (.swp) in a common location
" // means use the file's full path
set dir=~/.vim/_swap//

" put backup files (~) in a common location if possible
set backup
set backupdir=~/.vim/_backup/,~/tmp,.

" turn on undo files and put them in a common location
set undofile
set undodir=~/.vim/_undo/

" set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P

autocmd FileType ruby set tabstop=2
autocmd FileType ruby set shiftwidth=2

autocmd FileType javascript set tabstop=4
autocmd FileType javascript set shiftwidth=4

inoremap <Nul> <C-x><C-o>
imap jj <Esc>

" powerline settings
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set laststatus=2 " always display the statusline in all windows
set noshowmode " hide the default mode text

" powerline settings for macvim
 if has("gui_running")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        set guifont=Inconsolata\ for\ Powerline:h15
    endif
endif

" NERDtree settings
" autocmd vimenter * NERDTree ." automatically open NERDTree upon startup
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " autoclose vim if only NERDTree is open
