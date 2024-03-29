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

" ----------------
" unmimify
" ----------------
" Simple re-format for minified Javascript
command! UnMinify call UnMinify()
function! UnMinify()
    %s/{\ze[^\r\n]/{\r/g
    %s/){/) {/g
    %s/};\?\ze[^\r\n]/\0\r/g
    %s/;\ze[^\r\n]/;\r/g
    %s/[^\s]\zs[=&|]\+\ze[^\s]/ \0 /g
    normal ggVG=
endfunction

" ----------------
" tab 2 spaces
" ----------------
command! Tab2Spaces call Tab2Spaces()
function! Tab2Spaces()
    set expandtab
    set shiftwidth=2
    set softtabstop=2
endfunction

" ----------------
" tab 4 spaces
" ----------------
command! Tab4Spaces call Tab4Spaces()
function! Tab4Spaces()
    set expandtab
    set shiftwidth=4
    set softtabstop=4
endfunction

