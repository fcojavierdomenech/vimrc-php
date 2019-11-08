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
set tags=tags;/

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

""""""""""""""""""""""
"COLOR SCHEME:some of my prefered
""""""""""""""""""""""
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
"colorscheme hybrid
"colorscheme desert256
"colorscheme distinguished
"colorscheme dracula
colorscheme obsidian
"colorscheme desertink

"some modifications to the colorscheme
"to view current settings use for instance ':hi Folded'
hi clear FoldColumn
hi clear Folded
hi Folded ctermfg=216
hi Folded ctermbg=none
hi FoldColumn ctermfg=216
hi FoldColumn ctermbg=None
hi Pmenu ctermbg=NONE ctermfg=blue
"hi clear String
"hi String ctermfg=200
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi NerdTreeDir ctermbg=NONE ctermfg=222


""""""""""""""""""""""""
"DOWNLOADING PLUGINS: using vim-plug https://github.com/junegunn/vim-plug
""""""""""""""""""""""""
call plug#begin()

"nerdtree
Plug 'scrooloose/nerdtree'

"fuzzy finder and mru
Plug 'ctrlpvim/ctrlp.vim'

Plug 'pbogut/fzf-mru.vim'

"visual addons tabline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"plugin for comments
Plug 'scrooloose/nerdcommenter'

"code completion with 'tab'
Plug 'ervandew/supertab'

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

"javascript bundle: syntax and indent plugins
Plug 'pangloss/vim-javascript'

"vim php syntax improvement
Plug 'StanAngeloff/php.vim'

"Twig syntax highlighting
Plug 'evidens/vim-twig'

"psr-2 syntax checker
Plug 'stephpy/vim-php-cs-fixer'

"syntastic
Plug 'scrooloose/syntastic'

"YankRing maintains a history of previous yanks, changes and deletes
Plug 'vim-scripts/YankRing.vim'

"extended % matching for HTML, LateX and many other languages
Plug 'vim-scripts/matchit.zip'

"a vim plugin to perform vimdiffs on blocks of code (not only all the file)
Plug 'AndrewRadev/linediff.vim'

"save and manage macros
Plug 'vim-scripts/marvim'

"a plugin for automatically restoring file's cursor position and folding
Plug 'vim-scripts/restore_view.vim'

"tagbar
Plug 'majutsushi/tagbar'

"Ultisnips
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

"For Symfony
Plug 'sniphpets/sniphpets-symfony'

"very useful his OpenServerSmartSearch function
Plug 'tyru/open-browser.vim'

"vim-oblique, vim search with /, & improvements
Plug 'junegunn/vim-pseudocl'
Plug 'junegunn/vim-oblique'

"Git plugs
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'airblade/vim-gitgutter'

"Surround plugin
Plug 'tpope/vim-surround'

"Project search plugin with AG
Plug 'rking/ag.vim'

"Project replace plugin
Plug 'skwp/greplace.vim'

"abolish heps handling words with substitutions abreviations and so
Plug 'tpope/vim-abolish'

"Calendar
Plug 'itchyny/calendar.vim'

"adds font icons for programming languages
Plug 'ryanoasis/vim-devicons'

"sync to ftp folder
Plug 'eshion/vim-sync'

"always highlight the surrounding tabs
Plug 'Valloric/MatchTagAlways'

"undo history visualizer
Plug 'mbbill/undotree'

"helps to fix the root directory of the project whatever is the file opened
Plug 'airblade/vim-rooter'

"testing utility
Plug 'janko-m/vim-test'

"interacting with tmux
Plug 'benmills/vimux'

" (optional) javascript completion
Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}

" (optional) colorizer
Plug 'chrisbra/Colorizer'

"xdebug debugger
Plug 'joonty/vdebug'

"fuzzy finder: PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run install script
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"Phpator refactoring and autocompletion
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}

" Require ncm2 and this plugin
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/ncm2-phpactor'
Plug 'ncm2/ncm2-ultisnips'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'

"Automatically document function, var, class..
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'

let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates_snip"

call plug#end()

""""""""""""""""""""""
"MAPPINGS: custom mappings
""""""""""""""""""""""
nnoremap <unique> <Leader>rv :call PhpRenameLocalVariable()<CR>
map <Space> <Leader>
imap <C-z> <esc><C-z>
nnoremap j gj
nnoremap k gk
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap { [{
nnoremap } ]}
vmap { [{
vmap } ]}
nnoremap <F12> :set list lcs=tab:\|\
" when diff mode
nnoremap dn ]c
nnoremap dN [c
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
map <Leader>s :FZF<Enter>
"nmap <C-p> :CtrlP<Enter>
" Ag
map <C-a> :Ag<Enter>
:command Ag "Ag!"
"nnoremap <Leader>s :!grep -IirlZ "pattern" .|xargs -0 vim
nnoremap <Leader>f :grep <C-r><C-w> **/*.php | cw
"let test#strategy = "basic"
let test#strategy = "neovim"
"change to camelCase
nnoremap + /\w\+_<CR>
nnoremap - f_x~

" UNDOTREE
nnoremap <Leader>u :call UndotreeToggle()<CR>:call UndotreeFocus()<CR>

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

"mapping OpenBrowserSmartSearch function
nnoremap <unique> <Leader>g :call CallGoogle()<CR>
"mapping OpenBrowserSmartSearch function
nnoremap <Leader>d <C-]>

map <F1> <esc>

" Output the current syntax group
nnoremap <Leader>hi :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>

"disable comments with new line (uncomment if desired)
"autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

""""""""""""""""""""""""""""""""""""""
" Plugins: specific plugin configuration and mappings
""""""""""""""""""""""""""""""""""""""

" NCM2
"---------------------------------
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

" OPEN-BROWSER
"---------------------------------
function CallGoogle()
    let name = input('Google for: ')
    call inputrestore()
    execute "OpenBrowserSmartSearch ".name
:endfunction

command! -nargs=* CallGoogle call CallGoogle()

"AUTOCOMPLETE: NVM2
"---------------------------------
inoremap <expr> <CR> (pumvisible() ? "\<c-y>" : "\<CR>")

"VIM-ROOTER
"---------------------------------
"what kind of files determine whether a directory is root
let g:rooter_patterns = ['.git/']
au BufEnter * Rooter

"UNDOTREE
"---------------------------------
let g:undotree_WindowLayout=2

"UTILSNIPS
"---------------------------------

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Custom snippets dir
set runtimepath+=~/.vim/vimrc-php
let g:UltiSnipsSnippetsDir="~/.vim/vimrc-php/UltiSnips"

"for Laravel blade templates being recognized as html
autocmd BufNewFile,BufRead *.blade.php setlocal ft=html

"FUGITIVE
"---------------------------------
set diffopt+=vertical


"SYNTASTIC
"---------------------------------

"set statusline+=%{fugitive#statusline()}
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
"no annoying code sniffer errors
let g:syntastic_php_checkers = ['php', 'phpmd']
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '⚠'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_enable_signs = 1
let g:syntastic_enable_highlighting=0
let g:syntastic_mode_map = {
            \ "mode": "passive",
            \ "active_filetypes": ["ruby", "php"],
            \ "passive_filetypes": ["puppet"] }


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
        execute "NERDTreeToggle"
	else
		let g:is_nerd_tree_opened=1
        execute "NERDTreeFind"
	endif
endfunction "}}}

command! -nargs=* Tree call Tree()

"Open NERDTree if no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") |let g:is_nerd_tree_opened=1 | NERDTree | wincmd l | M | else |  let g:is_nerd_tree_opened=0 | endif

"Close NERDTree if it's the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Show bookmarks by default if any
let NERDTreeShowBookmarks=1
let NERDTreeWinSize=55


"MRU (CRTLP)
"---------------------------------

fun! MV() "{{{
	vsp
	"execute \"CtrlPMRUFiles\"
    execute "FZFMru"
endfunction "}}}

fun! MH() "{{{
	sp
	"execute \"CtrlPMRUFiles\"
    execute "FZFMru"
endfunction "}}}

fun! Mon() "{{{
	execute "on"
	if g:is_nerd_tree_opened == 1
		execute "NERDTreeToggle"
	endif
    execute "FZFMru"
	"execute \"CtrlPMRUFiles\"
endfunction "}}}

fun! M() "{{{
    execute "FZFMru"
    "execute \"CtrlPMRUFiles\"
endfunction "}}}

let ctrlp_mruf_max = 500
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:100'


command! -nargs=* MV call MV()
command! -nargs=* MH call MH()
command! -nargs=* Mon call Mon()
command! -nargs=* M call M()

"SUPERTAB from top to bottom
"--------------------------------
let g:SuperTabDefaultCompletionType = "<c-o>"

inoremap <C-@> <C-x><C-o><C-p>
inoremap <C-Space> <C-x><C-o><C-p>


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


"GREPLACE
"--------------------------------

set grepprg=ag    "we ant to use ag for the search
let g:grep_cmd_opts = '--line-numbers --noheading'


"CALENDAR
"--------------------------------

let g:calendar_google_calendar = 1
let g:calendar_google_task = 1


"AIRLINE
"--------------------------------

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols for airline
let g:airline_theme = 'bubblegum'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_section_b = '%{fnamemodify(getcwd(),":t")}'
let g:airline#extensions#tagbar#flags = 'f'  " show full tag hierarchy
set ttimeoutlen=50
set laststatus=2

"PHPACTOR
"--------------------------------
" Include use statement
nmap <Leader>u :call phpactor#UseAdd()<CR>

" Invoke the context menu
nmap <Leader>mm :call phpactor#ContextMenu()<CR>

" Invoke the navigation menu
nmap <Leader>nn :call phpactor#Navigate()<CR>

" Goto definition of class or class member under the cursor
nmap gd :call phpactor#GotoDefinition()<CR>
" Goto references of class or class member under the cursor
nmap gr :call phpactor#ClassReferences()<CR>
" Transform the classes in the current file
nmap <Leader>tt :call phpactor#Transform()<CR>

" Generate a new class (replacing the current file)
nmap <Leader>cn :call phpactor#ClassNew()<CR>

" Extract expression (normal mode)
nmap <silent><Leader>ee :call phpactor#ExtractExpression(v:false)<CR>

" Extract expression from selection
vmap <silent><Leader>ee :<C-U>call phpactor#ExtractExpression(v:true)<CR>

" Extract method from selection
vmap <silent><Leader>em :<C-U>call phpactor#ExtractMethod()<CR>

" Show brief information about the symbol under the cursor
nmap <S-i> :call phpactor#Hover()<CR>

" Show brief information about the symbol under the cursor
nmap <Leader>e :call phpactor#ClassExpand()<CR>

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
        echo "diffoff..."
        execute ":windo if &diff | diffoff | endif"
    else
        if a:mode=='x'
            echo "linediff..."
            echo a:firstline."---".a:lastline
            call linediff#Linediff(a:firstline, a:lastline)
        else

            if g:is_nerd_tree_opened==1
                execute "Tree"
            endif

            echo "diff windows..."
            execute ":windo if ! &diff | diffthis | endif"
            "diffthis
        endif
    endif
:endfunction


"TAGBAR + TAG GENERATION
"--------------
nnoremap <leader>j :split<CR>:exec("tag ".expand("<cword>"))<CR>

function! GenTags()
	if isdirectory("./vendor")
		echo '(re)Generating framework tags'
		execute "!php artisan ide-helper:generate"
		execute "!phpctags -R *"
		if !filereadable(".git")
			execute "!touch .git"
		endif
	else
		echo 'Not in a framework project'
		if filereadable("tags")
			echo "Regenerating tags..."
            execute "!phpctags -R *"
			if !filereadable(".git")
				execute "!touch .git"
			endif
		else
			let choice = confirm("Create tags?", "&Yes\n&No", 2)
			if choice == 1
				echo "Generating tags..."
                execute "!phpctags -R *"
				if !filereadable(".git")
					execute "!touch .git"
				endif
			endif
		endif
	endif
:endfunction

command! -nargs=* GenTags call GenTags()


"REMOVE TRAILING SPACES (and dos breaklines ^M)
"--------------
fun! RemoveTrailingSpaces() "{{{
    execute '%s/\s\+$//e'
    execute '%s/\r/\r/ge'
endfunction "}}}
command! -nargs=* RemoveTrailingSpaces call RemoveTrailingSpaces()

"TESTING
fun! TestN() "{{{
    execute 'TestNearest'
endfunction "}}}

command! -nargs=* TN call TestN()

fun! TestF() "{{{
    execute 'TestFile'
endfunction "}}}

command! -nargs=* TF call TestF()

fun! TestL() "{{{
    execute 'TestLast'
endfunction "}}}

command! -nargs=* TL call TestL()

fun! TestS() "{{{
    execute '!vendor/bin/paratest -p8 tests/'
endfunction "}}}

command! -nargs=* TS call TestS()

fun! TestV() "{{{
    execute 'TestVisit'
endfunction "}}}

command! -nargs=* TV call TestV()

"COLORSCHEME CUSTOMIZATION
"--------------
"custom colorscheme, you can configure your favorite colorscheme depending on
"the amount of light
fun! Day() "{{{
    highlight Normal ctermfg=white ctermbg=black
endfunction "}}}

fun! Night() "{{{
	hi LineNr ctermfg=red
	hi LineNr ctermbg=none

	hi Folded ctermfg=216
	hi Folded ctermbg=none

	hi FoldColumn ctermfg=216
	hi FoldColumn ctermbg=None

    hi MatchParen cterm=bold ctermbg=black ctermfg=magenta
    hi ObliqueCurrentMatch cterm=bold ctermbg=white ctermfg=black

    highlight Normal ctermfg=NONE ctermbg=NONE

    set t_ZH=[3m
    set t_ZR=[23m
    highlight Comment ctermfg=grey cterm=italic
    hi Error ctermfg=17 ctermbg=166 cterm=none
    hi SpellBad ctermfg=17 ctermbg=166 cterm=undercurl

    "popup
    highlight Pmenu ctermbg=none ctermfg=blue
    highlight PmenuSel ctermbg=none ctermfg=yellow

    " Braces coloring
    autocmd BufRead,BufNewFile * syn match parens /[(){}]/ | hi parens ctermfg=blue
endfunction "}}}

command! -nargs=* Day call Day()
command! -nargs=* Night call Night()

Night()

"Phpactor
"--------------
function! IsComposerProject()
    if filereadable("composer.json")
        echo "Found Composer.json: autocompletion will use Phpactor :-)"
        autocmd FileType php setlocal omnifunc=phpactor#Complete
    endif
endfunction

command! -nargs=* IsComposerProject call IsComposerProject()
IsComposerProject()


" Put at the very end of your .vimrc file.
"-----------------------------------------

function! PhpSyntaxOverride()
    "hi! def link phpDocTags  phpDefine
    "hi! def link phpDocParam phpType
    hi! phpTodo  ctermfg=120
    hi! phpDocTags  ctermfg=241
    hi! phpDocParam ctermfg=243
endfunction

augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END

" ----------------------------------------------------------------------------
" DiffRev
" ----------------------------------------------------------------------------
let s:git_status_dictionary = {
            \ "A": "Added",
            \ "B": "Broken",
            \ "C": "Copied",
            \ "D": "Deleted",
            \ "M": "Modified",
            \ "R": "Renamed",
            \ "T": "Changed",
            \ "U": "Unmerged",
            \ "X": "Unknown"
            \ }
function! s:get_diff_files(rev)
    let list = map(split(system(
                \ 'git diff --name-status '.a:rev), '\n'),
                \ '{"filename":matchstr(v:val, "\\S\\+$"),"text":s:git_status_dictionary[matchstr(v:val, "^\\w")]}'
                \ )
    call setqflist(list)
    copen
endfunction

command! -nargs=1 DiffRev call s:get_diff_files(<q-args>)


" ----------------------------------------------------------------------------
" VDebug
" ----------------------------------------------------------------------------
"setting vdebug path
if !exists('g:vdebug_options')
    let g:vdebug_options = {}
endif
"let g:vdebug_options['path_maps'] = {"/var/www/current/test/": "/var/www/html/micobe/"}
let g:vdebug_options['path_maps'] = {"/var/www/current/backend_test/": "/var/www/html/backend/"}

let g:vdebug_options = {
            \'break_on_open': 0
            \}

" ----------------------------------------------------------------------------
" Php-cs-fixer
" ----------------------------------------------------------------------------
" If you want to define specific fixers:
" If you use php-cs-fixer version 2.x
let g:php_cs_fixer_rules = "@PSR2,no_unused_imports,no_useless_else,no_useless_return,align_multiline_comment"          " options: --rules (default:@PSR2)
let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0

command! -nargs=* Fix :execute PhpCsFixerFixFile() | :undo | :w | :redo | :DiffLastSaved

" ----------------------------------------------------------------------------
" vim-sequence-diagram
" ----------------------------------------------------------------------------
nmap <unique> <leader>q <Plug>GenerateDiagram 
