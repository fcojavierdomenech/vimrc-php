" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set background=dark " If using a dark background within the editing area and syntax highlighting
" Keep 10 lines below and above the cursor
set scrolloff=10

"allowing menus under console
set wildmenu
set wildmode=full
set wildcharm=<C-Z>
map <F4> :emenu <C-Z>

"numbering
set number
set relativenumber
"set nowrap

"some extra settings
set title "title of the window
set history=1000 "number of recorded changes in history
set undolevels=3000
set nobackup
set noswapfile
set hlsearch "hightlight search
set showmatch
set matchtime=2
set matchpairs+=<:>
set wildignore=*.svn,*.bak,*.swp
set pastetoggle=<F12>
set t_Co=256
set ruler
set foldcolumn=3
set splitbelow "when spliting a new file will be placed below
set splitright " " right
"set indent to 4 spaces
set expandtab ts=4 sw=4 ai

"encoding to utf-8
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

" Persistent undo
set undodir=~/.vim/undodir
set undofile

"to remove the comment after new line
au FileType c,cpp,php,java,js,bash setlocal comments-=:// comments+=f://

"DBUI avoid folding
au FileType dbout set nofoldenable

au FileType js,typescript,twig,yaml,html call Tab2Spaces()
au FileType c,cpp,php,java,js,bash call Tab4Spaces()

" Time in milliseconds to wait for a mapped sequence to complete. Default 1000 ms
set timeoutlen=500

" Coc completion
" Use 'pumwidth' for configure minimal width of popupmenu and 'pumheight'
set pumwidth=40
