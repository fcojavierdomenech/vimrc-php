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

" Imports all missing classes on save
autocmd BufWritePost *.php PhpactorImportMissingClasses


function! IsComposerProject()
    if filereadable("composer.json")
        echo "Found Composer.json: autocompletion will use Phpactor :-)"
        autocmd FileType php setlocal omnifunc=phpactor#Complete
    endif
endfunction

command! -nargs=* IsComposerProject call IsComposerProject()
IsComposerProject()

