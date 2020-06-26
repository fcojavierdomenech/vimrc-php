" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
            \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle'  , 'comment' ]
let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
let g:which_key_map['f'] = [ ':Files'                     , 'search files' ]
let g:which_key_map['r'] = [ ':Ranger'                    , 'ranger' ]
let g:which_key_map['R'] = [ ':Rg'                        , 'search text' ]

" s is for search
let g:which_key_map.s = {
            \ 'name' : '+search' ,
            \ '/' : [':History/'     , 'history'],
            \ ';' : [':Commands'     , 'commands'],
            \ 'a' : [':Ag'           , 'text Ag'],
            \ 'b' : [':BLines'       , 'current buffer'],
            \ 'B' : [':Buffers'      , 'open buffers'],
            \ 'c' : [':Commits'      , 'commits'],
            \ 'C' : [':BCommits'     , 'buffer commits'],
            \ 'f' : [':Files'        , 'files'],
            \ 'g' : [':GFiles'       , 'git files'],
            \ 'G' : [':GFiles?'      , 'modified git files'],
            \ 'h' : [':History'      , 'file history'],
            \ 'H' : [':History:'     , 'command history'],
            \ 'l' : [':Lines'        , 'lines'] ,
            \ 'm' : [':Marks'        , 'marks'] ,
            \ 'M' : [':Maps'         , 'normal maps'] ,
            \ 'p' : [':Helptags'     , 'help tags'] ,
            \ 'P' : [':Tags'         , 'project tags'],
            \ 's' : [':Snippets'     , 'snippets'],
            \ 'S' : [':Colors'       , 'color schemes'],
            \ 't' : [':Rg'           , 'text Rg'],
            \ 'y' : [':Filetypes'    , 'file types'],
            \ 'z' : [':FZF'          , 'FZF'],
            \ }

let g:which_key_map.t = {
            \ 'name' : '+terminal' ,
            \ ';' : [':FloatermNew --wintype=popup --height=6'        , 'terminal'],
            \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
            \ 'g' : [':FloatermNew lazygit'                           , 'git'],
            \ 'p' : [':FloatermNew php -a'                            , 'php'],
            \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
            \ 't' : [':FloatermToggle'                                , 'toggle'],
            \ }

" Register which key map
autocmd! User vim-which-key call which_key#register('<Space>', "g:which_key_map")
