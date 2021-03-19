" Vim with all enhancements
source $VIMRUNTIME/vimrc_example.vim

" Use the internal diff if available.
" Otherwise use the special 'diffexpr' for Windows.
if &diffopt !~# 'internal'
  set diffexpr=MyDiff()
endif
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

" CONFIG
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
set guifont=Roboto_Mono:h16
set guioptions=

call plug#begin('~\vimfiles\plugins')

	Plug 'jiangmiao/auto-pairs'
	Plug 'jnurmine/Zenburn'
	
call plug#end()

colorscheme zenburn