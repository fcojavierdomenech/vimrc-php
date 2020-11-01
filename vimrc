runtime! debian.vim

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

source ./config/settings.vimrc

source ./config/colorscheme.vimrc

source ./config/plugs.vimrc

source ./config/mappings.vimrc

source ./config/helpers.vimrc
