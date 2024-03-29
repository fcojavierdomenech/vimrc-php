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
"colorscheme obsidian
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
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

hi LineNr ctermfg=red
hi LineNr ctermbg=none

hi Folded ctermfg=216
hi Folded ctermbg=none

hi FoldColumn ctermfg=216
hi FoldColumn ctermbg=None

hi MatchParen cterm=bold ctermbg=black ctermfg=magenta
hi ObliqueCurrentMatch cterm=bold ctermbg=white ctermfg=black

hi Sneak ctermbg=blue

highlight Normal ctermfg=NONE ctermbg=NONE

set t_ZH=[3m
set t_ZR=[23m
highlight Comment ctermfg=grey cterm=italic
hi Error ctermfg=17 ctermbg=166 cterm=none
hi SpellBad ctermfg=17 ctermbg=166 cterm=undercurl

" Braces coloring
autocmd BufRead,BufNewFile * syn match parens /[(){}]/ | hi parens ctermfg=223

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

"Coc Completion
func! s:CocOveride() abort
    hi Pmenu ctermbg=24
    hi CocSearch ctermfg=11
    hi FgCocErrorFloatBgCocFloating ctermbg=24 ctermfg=Red
    hi CocMenuSel ctermfg=blue ctermbg=150
    hi PmenuSbar guibg=#bcbcbc
    hi PmenuThumb guibg=#585858

endfunc

augroup colorscheme_coc_setup | au!
    au ColorScheme * call s:CocOveride()
augroup END

function! CheckHiGroup()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
