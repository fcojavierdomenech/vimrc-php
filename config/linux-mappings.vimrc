" xclip is required for the following two commands
" these allow to copy and paste from/to clipboard
"in order to ident the pasted content
vmap <C-c> y:call system("xclip -sel clip", getreg("\""))<CR>y
nmap <C-v> :call system("xclip -o -sel -c ", getreg("\""))<CR>p
inoremap <C-v>  :call system("xclip -o -sel -c ", getreg("\""))<CR>p

