""""""""""""""""""""""""
"DOWNLOADING PLUGINS: using vim-plug https://github.com/junegunn/vim-plug
""""""""""""""""""""""""
call plug#begin()

" PHP documentor
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }

" On-demand lazy load
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
source $HOME/.vim/vimrc-php/plug-config/whichkey.vim

"visual addons tabline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"plugin for comments
Plug 'scrooloose/nerdcommenter'

"one colorscheme to rule them all lol
Plug 'flazz/vim-colorschemes'

"enable repeating supported plugin maps with '.'
Plug 'tpope/vim-repeat'

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

"Ultisnips
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

"For PHP
Plug 'sniphpets/sniphpets'

"For Symfony
Plug 'sniphpets/sniphpets-symfony'

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

"abolish heps handling words with substitutions abreviations and so (:%S)
Plug 'tpope/vim-abolish'

"adds font icons for programming languages
Plug 'ryanoasis/vim-devicons'

"sync to ftp folder
Plug 'eshion/vim-sync'

"undo history visualizer
Plug 'mbbill/undotree'

"helps to fix the root directory of the project whatever is the file opened
Plug 'airblade/vim-rooter'

"testing utility
Plug 'janko-m/vim-test'

" xdebug debugger
Plug 'joonty/vdebug'

Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'

Plug 'lambdalisue/nerdfont.vim'

Plug 'n0v1c3/vira', { 'do': './install.sh' }

" fuzzy finder: PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run install script
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pbogut/fzf-mru.vim'

" Phpator refactoring and autocompletion
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}

" Vue
Plug 'leafOfTree/vim-vue-plugin'

Plug 'wellle/context.vim'

source $HOME/.vim/vimrc-php/plug-config/phpactor.vim

" Conquer Of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
source $HOME/.vim/vimrc-php/plug-config/coc.vim

" Floaterm
Plug 'voldikss/vim-floaterm'
source $HOME/.vim/vimrc-php/plug-config/floaterm.vim

"example specifying a branch:
"Plug 'https://github.com/codeinabox/vim-test.git', { 'as': 'tester', 'branch': 'bugfix/paratest-nearest' }

" Jump to any location specified by two characters.
Plug 'justinmk/vim-sneak'

""""""""""""""""""""""""""""""""""""""
" Plugins: specific plugin configuration and mappings
""""""""""""""""""""""""""""""""""""""

let g:sneak#label = 1
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T

call plug#end()


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
let g:syntastic_php_checkers = ['php-cs-fixer']
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '⚠'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_enable_signs = 1
let g:syntastic_enable_highlighting=0

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

"MRU (CRTLP)
"---------------------------------

fun! MV() "{{{
    vsp
    execute "FZFFreshMru"
endfunction "}}}

fun! MH() "{{{
    sp
    execute "FZFFreshMru"
endfunction "}}}

fun! M() "{{{
    execute "FZFFreshMru"
endfunction "}}}

command! -nargs=* MV call MV()
command! -nargs=* MH call MH()
command! -nargs=* M call M()

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

set grepprg=ag    "we want to use ag for the search
let g:grep_cmd_opts = '--line-numbers --noheading'


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
let g:airline_section_x = '%{fnamemodify(getcwd(),":t")}'
let g:airline#extensions#tagbar#flags = 'f'  " show full tag hierarchy
set ttimeoutlen=50
set laststatus=2

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
            echo "diff windows..."
            execute ":windo if ! &diff | diffthis | endif"
            "diffthis
        endif
    endif
:endfunction

" TESTING
"--------------
command! -nargs=* TN execute 'TestNearest'
command! -nargs=* TF execute 'TestFile'
command! -nargs=* TL execute 'TestLast'
command! -nargs=* TS execute 'TestSuite'
command! -nargs=* TV execute 'TestVisit'

" ----------------------------------------------------------------------------
" VDebug
" ----------------------------------------------------------------------------
"setting vdebug path
if !exists('g:vdebug_options')
    let g:vdebug_options = {}
endif
"let g:vdebug_options['path_maps'] = {"remote path": "local path"}

let g:vdebug_options = {'ide_key': 'xdebug'}
let g:vdebug_options = {'break_on_open': 0}
let g:vdebug_options = {'server': 'localhost'}
let g:vdebug_options = {'port': '9001'}

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

function! s:DiffWithSaved()
    let filetype=&ft
    diffthis
    vnew | r # | normal! 1Gdd
    diffthis
    exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction

command! -nargs=* Fix :execute PhpCsFixerFixFile() | :undo | :w | :redo | call s:DiffWithSaved()

"-----------------
" RIPGREP
"-----------------
" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
    let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
    let initial_command = printf(command_fmt, shellescape(a:query))
    let reload_command = printf(command_fmt, '{q}')
    let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
    call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

"-----------------
" CoC
"-----------------
noremap <silent> cc :CocCommand<cr>
noremap <silent> cl :CocList<cr>
noremap <silent> ca :CocAction<cr>

noremap <silent> <leader>n :CocCommand explorer<cr>

"-----------------
" DOGE
"-----------------
let g:doge_php_settings = {
            \  'resolve_fqn': 1
            \}

"-----------------
" CONTEXT
"-----------------
let g:contex_enabled=0
