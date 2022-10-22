function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gc <plug>(lsp-code-action)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    " nmap <buffer> gp <plug>(lsp-previous-diagnostic)
    " nmap <buffer> gn <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    " nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    " nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

    "lsp#disable_diagnostics_for_buffer()

    let g:lsp_format_sync_timeout = 1000
    " autocmd! BufWritePre *.dart call execute('LspDocumentFormatSync')
    " autocmd BufWritePre *.dart call execute('LspCodeActionSync source.organizeImports')
    
endfunction

augroup lsp_install
    au!
    
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

let g:lsp_diagnostics_enabled = 0

