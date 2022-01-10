augroup go_completion
  au!
  au BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
augroup END
