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

let path = expand('%:p:h')

source ~/.vim/vimrc-php/config/helpers.vimrc
source ~/.vim/vimrc-php/config/settings.vimrc
source ~/.vim/vimrc-php/config/plugs.vimrc
source ~/.vim/vimrc-php/config/mappings.vimrc
source ~/.vim/vimrc-php/config/english-keyboard-mappings.vimrc
if has('macunix')
    source ~/.vim/vimrc-php/config/macos-mappings.vimrc
else
    source ~/.vim/vimrc-php/config/linux-mappings.vimrc
endif
source ~/.vim/vimrc-php/config/colorscheme.vimrc
