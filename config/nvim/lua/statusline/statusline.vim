function! StatusLine()
  return luaeval("require 'statusline.init'.StatusLine()")
endfunction

augroup statusline
  au!
  au WinEnter,BufEnter * set statusline=%!StatusLine()
augroup END
