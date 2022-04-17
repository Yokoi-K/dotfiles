function! s:enable_colors() 
  if exists('b:baleia') && b:baleia == v:true 
    return
  endif
  let b:baleia = v:true

  call s:highlighter.automatically(bufnr('%'))
endfunction

autocmd! BufEnter buffer call s:highlighter.automatically(bufnr('%')))
