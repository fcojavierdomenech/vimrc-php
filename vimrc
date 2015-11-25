" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

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

"ctags
"set tags=tags;/

"some extra settings
set title "title of the window
set history=1000 "number of recorded changes in history
set undolevels=1000 
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
"set indent to 4 spaces
set expandtab ts=4 sw=4 ai

"encoding to utf-8
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

"COLOR SCHEME some of my prefered
"colorscheme blackbeauty
"colorscheme vividchalk
"colorscheme inkpot
"colorscheme lucius
"colorscheme badwolf
"colorscheme candycode
"colorscheme railscasts
"colorscheme desertEx
"colorscheme vimhut
"colorscheme herald
"colorscheme jellybeans
"colorscheme atom
colorscheme hybrid

"some modifications to the colorscheme
"to view current settings use for instance ':hi Folded'
hi clear FoldColumn
hi clear Folded
hi Folded ctermfg=216
hi Folded ctermbg=black
hi FoldColumn ctermfg=216
hi FoldColumn ctermbg=None
hi clear String
hi String ctermfg=200
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

command! -nargs=* Day call Day()
command! -nargs=* Night call Night()



""""""""""""""""""""""""
"DOWNLOADING PLUGINS: using vim-plug https://github.com/junegunn/vim-plug
""""""""""""""""""""""""
call plug#begin()

"nerdtree
Plug 'scrooloose/nerdtree'

"fuzzy finder and mru
Plug 'kien/ctrlp.vim'

"visual addons tabline
Plug 'bling/vim-airline'

"plugin for comments
Plug 'scrooloose/nerdcommenter'

"javascript bundle: syntax and indent plugins
Plug 'pangloss/vim-javascript'

"code completion with 'tab'
Plug 'ervandew/supertab'

"automaticatically complete
Plug 'Valloric/YouCompleteMe'

"one colorscheme to rule them all lol
Plug 'flazz/vim-colorschemes'

"enable repeating supported plugin maps with '.'
Plug 'tpope/vim-repeat'

"json better highlighting
Plug 'elzr/vim-json'

"HTML5 omnicomplete and syntax
Plug 'othree/html5.vim'

"Better css syntax for Vim
Plug 'hail2u/vim-css3-syntax'

"YankRing maintains a history of previous yanks, changes and deletes
Plug 'YankRing.vim'

"extended % matching for HTML, LateX and many other languages
Plug 'matchit.zip'

"a vim plugin to perform vimdiffs on blocks of code (not only all the file)
Plug 'AndrewRadev/linediff.vim'

"save and manage macros
Plug 'marvim'

"a plugin for automatically restoring file's cursor position and folding
Plug 'restore_view.vim'

"syntastic
Plug 'scrooloose/syntastic'

"tagbar
Plug 'majutsushi/tagbar'

"Ultisnips
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

"Openserverbrowser, very useful his OpenServerSmartSearch function
Plug 'tyru/open-browser.vim'

"vim-oblique, vim search with /, & improvements
Plug 'junegunn/vim-pseudocl'
Plug 'junegunn/vim-oblique'

call plug#end()


""""""""""""""""""""""
"MAPPINGS
""""""""""""""""""""""
map <Space> <Leader>
nnoremap j gj
nnoremap k gk
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>l <C-w>l
nnoremap { [{
nnoremap } ]}
nnoremap <F12> :set list lcs=tab:\|\ 
inoremap <C-@> <C-x><C-u>
" moving between windows
nnoremap <S-l> <C-w>l
nnoremap <S-h> <C-w>h
nnoremap <S-j> <C-w>j
nnoremap <S-k> <C-w>k
" MARKS
nnoremap <Leader>m :marks<Enter>
nnoremap <Leader>mm ]'
nnoremap <Leader>mn ['
" YANKRING
nnoremap <silent> <F9> :YRShow<CR>
inoremap <silent> <F9> <esc> :YRShow<CR>
" NERDTREE
nnoremap <Leader>t :Tree<Enter>
" CTRLP
nnoremap <Leader>l :LocateFile<Enter>

"nnoremap <Leader>s :!grep -IirlZ "pattern" .|xargs -0 vim

nnoremap <Leader>f :grep <C-r><C-w> **/*.php | cw

" xclip is required for the following two commands
" these allow to copy and paste from/to clipboard
vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
nmap <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p
inoremap <C-v> <esc> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p
"in order to ident the pasted content
autocmd VimEnter * nnoremap p p=`]`]l

"mapping for surround plugin in visual mode
vmap s S

"mapeo para nuevos ambitos {
inoremap {<Enter> {<Enter>}<Esc><Up>o

"to remove the comment after new line
au FileType c,cpp,php,java,js setlocal comments-=:// comments+=f://

""""""""""""""""""""""""""""""""""""""
" Plugins Config
""""""""""""""""""""""""""""""""""""""

"ECLIM
"---------------------------------
let g:EclimCompletionMethod = 'omnifunc'
function IniEclim()
	if !filereadable("~/workspace/.metadata/.lock")
		execute "!~/eclipse/eclimd &> /dev/null &"
	endif
:endfunction

command! -nargs=* IniEclim call IniEclim()

"AUTOCOMPLETE: YouCompleteMe
"---------------------------------
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_autoclose_preview_window_after_completion = 1


"UTILSNIPS
"---------------------------------

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<C-l>"
let g:UltiSnipsJumpBackwardTrigger="<C-h>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"SYNTASTIC
"---------------------------------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
"no annoying code sniffer errors
let g:syntastic_php_checkers = ['php', 'phpmd']
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'

"PHP
"---------------------------------

"special features for php
"let php_folding = 1        "Set PHP folding of classes and functions.
let php_htmlInStrings = 1  "Syntax highlight HTML code inside PHP strings.
let php_sql_query = 1      "Syntax highlight SQL code inside PHP strings.


"YANKRING
"---------------------------------

if $USER == 'root'
	let loaded_yankring = 120
endif

let g:yankring_max_element_length = 8388608 " 8M


"NERDTREE
"---------------------------------
fun! Tree() "{{{
	if g:is_nerd_tree_opened==1
		let g:is_nerd_tree_opened=0
	else
		let g:is_nerd_tree_opened=1
	endif
	execute "NERDTreeToggle"
endfunction "}}}

command! -nargs=* Tree call Tree()

"Open NERDTree if no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | let g:is_nerd_tree_opened=1 | else |  let g:is_nerd_tree_opened=0 | endif

"Close NERDTree if it's the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Show bookmarks by default if any
let NERDTreeShowBookmarks=1


"MRU (CRTLP)
"---------------------------------
fun! MV() "{{{
	vsp
	execute "CtrlPMRUFiles"
endfunction "}}}

fun! MH() "{{{
	sp
	execute "CtrlPMRUFiles"
endfunction "}}}

fun! Mon() "{{{
	execute "on"
	if g:is_nerd_tree_opened == 1
		execute "NERDTreeToggle"
	endif
	execute "CtrlPMRUFiles"
endfunction "}}}

fun! M() "{{{
	execute "CtrlPMRUFiles"
endfunction "}}}

let ctrlp_mruf_max = 1000

command! -nargs=* MV call MV()
command! -nargs=* MH call MH()
command! -nargs=* Mon call Mon()
command! -nargs=* M call M()

"SUPERTAB + PHPCOMPLETE
let g:SuperTabDefaultCompletionType = "context"

autocmd Filetype php setlocal omnifunc=eclim#php#complete#CodeComplete

inoremap <C-@> <C-x><C-o><C-o><C-p>

function! EnablePHPComplete()
	execute "set completeopt=longest,menuone"
	execute "autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP"
	:endfunction


"encode/decode HTML
"--------------------------------
nnoremap <silent> <Leader>h :silent %!perl -CIO -MHTML::Entities -pe '$_=encode_entities $_'<CR>
vnoremap <silent> <Leader>h :<C-u>silent '<,'>!perl -CIO -MHTML::Entities -pe '$_=encode_entities $_'<CR>
nnoremap <silent> <Leader>H :silent %!perl -CI  -MHTML::Entities -pe '$_=decode_entities $_'<CR>
vnoremap <silent> <Leader>H :<C-u>silent '<,'>!perl -CI  -MHTML::Entities -pe '$_=decode_entities $_'<CR>


"REMEMBER
"--------------------------------
set viewoptions=cursor,folds,slash,unix
let g:skipview_files = ['*\.vim'] 


"AIRLINE
"--------------------------------
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols for airline
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_theme = 'powerlineish'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1

 """"""""""""""""""""""
 " HELPER FUNCTIONS
 """"""""""""""""""""""

 "PrettyXML
 "--------------
 
"Formats an xml file 'pretty' well, the file must only contain the xml
function! DoPrettyXML()
  let l:origft = &ft
  set ft=
  1s/<?xml .*?>//e
  0put ='<PrettyXML>'
  $put ='</PrettyXML>'
  silent %!xmllint --format -
  2d
  $d
  silent %<
  1
  exe "set ft=" . l:origft
endfunction

command! PrettyXML call DoPrettyXML()


"LINEDIFF/VIMDIFF
 "--------------
 
nnoremap <silent> <Leader>df :call DiffToggle('n')<CR>
xnoremap <silent> <Leader>df :call DiffToggle('x')<CR>

function! DiffToggle(mode) range
	echo "difftoggle..."
	if &diff
		diffoff
		echo "diffoff..."
	else
		if a:mode=='x'
			echo "linediff..."
			echo a:firstline."---".a:lastline
			call linediff#Linediff(a:firstline, a:lastline)
		else
			echo "diff..."
			diffthis
		endif
	endif
:endfunction


"TAG GENERATION
"--------------

function! GenTags()
	if isdirectory("./vendor")
		echo '(re)Generating framework tags'
		execute "!php artisan ide-helper:generate"
		execute "!ctags -R --filter-terminator=php"
		if !filereadable(".git")
			execute "!touch .git"
		endif
	else
		echo 'Not in a framework project'
		if filereadable("tags")
			echo "Regenerating tags..."
			execute "!ctags -R --filter-terminator=php"
			if !filereadable(".git")
				execute "!touch .git"
			endif
		else
			let choice = confirm("Create tags?", "&Yes\n&No", 2)
			if choice == 1
				echo "Generating tags..."
				execute "!ctags -R --filter-terminator=php"
				if !filereadable(".git")
					execute "!touch .git"
				endif
			endif
		endif
	endif
:endfunction

command! -nargs=* GenTags call GenTags()
"GenTags()



"custom colorscheme, you can configure your favorite colorscheme depending on
"the amount of light
fun! Day() "{{{
endfunction "}}}

fun! Night() "{{{
	hi LineNr ctermfg=red 
	hi LineNr ctermbg=none

	hi Folded ctermfg=216
	hi Folded ctermbg=black

	hi FoldColumn ctermfg=216
	hi FoldColumn ctermbg=None

	hi MatchParen cterm=bold ctermbg=none ctermfg=magenta
    hi ObliqueCurrentMatch cterm=bold ctermbg=white ctermfg=none


endfunction "}}}


Night()



"TODO
"- show block with documentation when autocompleting
