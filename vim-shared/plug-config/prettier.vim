let g:prettier#exec_cmd_path = "~/.nvm/versions/node/v15.14.0/bin/prettier"
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue PrettierAsync
" au BufNewFile,BufRead,BufWrite *.md syntax match Comment /\%^---\_.\{-}---$/
let g:prettier#config#single_quote = 'true'
let g:prettier#config#semi = 'false'

nnoremap <Leader>fd :Prettier<CR>
