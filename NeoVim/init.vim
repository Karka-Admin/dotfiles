" ------------------- GENERAL OPTIONS ---------------------

filetype plugin indent on		" Enable indentation rules that are file-type specific
syntax enable				    " Enable syntax highlighting
set encoding=utf-8			    " The encoding displayed
set mouse=a				        " Enable mouse
"set t_Co=256				    " Support for 256 colors
set clipboard=unnamedplus		" Copy paste from/to vim
set pumheight=10			    " Popup menu size
set history=10				    " Undo limit
set cmdheight=1				    " Height of the command bar
set foldcolumn=0			    " Add extra margin to the left
set lazyredraw				    " Don't redraw while executing macros
set showmatch				    " Show matching brackets when text indicator is over them
set hlsearch				    " Highlight search results
set ruler				        " Always show cursor position
set nowrap				        " Display long lines as just one line
set smartindent				    " Makes indenting smart
set autoindent				    " New lines inherit the indentation of previous lines
set number				        " Line numbers
set cursorline				    " Enable highlighting of the current line
set expandtab				    " Convert tabs to space
set smarttab				    " Indest tabstop number of spaces when tab is pressed
set tabstop=2				    " Indent using 4 spaces
set shiftround				    " Rounds indentation to nearest multiple of shiftwidth
set shiftwidth=4			    " When shifting, indent using four spaces
set nobackup				    " Disables backups
set nowb				        " Prevents automatic write backup
set noswapfile				    " Doesn't create swap file

" ------------------- PLUGIN OPTIONS ----------------------

" Vim-Plug plugin managers plugins.
call plug#begin('~\AppData\Local\nvim-data\site\autoload')

Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Set the color theme
autocmd vimenter * ++nested colorscheme gruvbox
