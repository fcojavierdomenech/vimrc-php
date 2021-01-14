""""""""""""""""""""""
"MAPPINGS: custom mappings
""""""""""""""""""""""
nnoremap <unique> <Leader>rv :call PhpRenameLocalVariable()<CR>
map <Space> <Leader>
imap <C-z> <esc><C-z>
nnoremap j gj
nnoremap k gk

" moving between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <S-l> <C-w>l
nnoremap <S-h> <C-w>h
nnoremap <S-j> <C-w>j
nnoremap <S-k> <C-w>k

nnoremap { [{
nnoremap } ]}
vmap { [{
vmap } ]}
nnoremap <F12> :set list lcs=tab:\|\
" when diff mode
nnoremap dn ]c
nnoremap dN [c
" YANKRING
nnoremap <silent> <F9> :YRShow<CR>
inoremap <silent> <F9> <esc> :YRShow<CR>
" FZF
map <Leader>s :GFiles<Enter>
:command Ag "Ag!"
let test#strategy = "neovim"
"change to camelCase
nnoremap + /\w\+_<CR>
nnoremap - f_x~

inoremap jk <esc>
inoremap kj <esc>

" xclip is required for the following two commands
" these allow to copy and paste from/to clipboard
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>:call system("pbcopy ", getreg("\""))<CR>
nmap <C-v> :call setreg("\"",system("pbpaste"))<CR>p
inoremap <C-v> <esc> :call setreg("\"",system("pbpaste"))<CR>p
"in order to ident the pasted content
autocmd VimEnter * nnoremap p p=`]`]l

"mapping for surround plugin in visual mode
vmap s S

"mapeo para nuevos ambitos {
inoremap {<Enter> {<Enter>}<Esc><Up>o

" Output the current syntax group
nnoremap <Leader>hi :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>

