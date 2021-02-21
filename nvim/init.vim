if !has('gui_running')
  set t_Co=256
endif

filetype plugin indent on		" Enable indentation rules that are file-type specific
syntax enable				        " Enable syntax highlighting
set encoding=utf-8			    " The encoding displayed
set mouse=a                 " Enable mouse
set clipboard=unnamed   		" Copy paste from/to vim
set pumheight=10			      " Popup menu size
set history=10				      " Undo limit
set cmdheight=1				      " Height of the command bar
set foldcolumn=0			      " Add extra margin to the left
set lazyredraw				      " Don't redraw while executing macros
set showmatch				        " Show matching brackets when text indicator is over them
set hlsearch				        " Highlight search results
set ruler				            " Always show cursor position
set nowrap				          " Display long lines as just one line
set smartindent				      " Makes indenting smart
set autoindent				      " New lines inherit the indentation of previous lines
set number				          " Line numbers
set expandtab				        " Convert tabs to space
set smarttab				        " Indest tabstop number of spaces when tab is pressed
set tabstop=2				        " Indent using 4 spaces
set shiftround				      " Rounds indentation to nearest multiple of shiftwidth
set shiftwidth=4			      " When shifting, indent using four spaces
set nobackup				        " Disables backups
set nowb				            " Prevents automatic write backup
set noswapfile				      " Doesn't create swap file
set updatetime=300          " Set update time to lower
set previewheight=12
set noshowmode
set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

call plug#begin('~/AppData/Local/nvim-data')

	Plug 'jnurmine/Zenburn'
	Plug 'morhetz/gruvbox'
	Plug 'preservim/nerdtree'
	Plug 'itchyny/lightline.vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

colorscheme zenburn