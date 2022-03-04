" set leader
"
let g:mapleader = "\<Space>"

set encoding=utf-8								" displayed encoding
set pumheight=10									" smaller pop up menu height
set fileencoding=utf-8						" encoding for file write
set cmdheight=2										" more room for messages
set mouse=a												" enable mouse
set conceallevel=0								" better for MD files
set tabstop=2											" 2 spaces for tab
set shiftwidth=2									" for indent
set smarttab											" realizes 2 tab vs 4
set laststatus=0									" always display status line
"set expandtab											" convert tabs to spaces
set autoindent										" remembers indent from prev line
set relativenumber								" relative line numbers
set number 												" show current line num
set showtabline=2									" show tab page num
set noshowmode										" don't show mode
set nobackup											" coc recommend
set nowritebackup									" coc recommend
"set formatoptions-=cro						" stop newline completion of comments

set t_Co=256											" 256 colors
syntax on


" color scheme
let g:sonokai_style = 'everforest'
"let g:everforest_background = 'soft'
set background=dark
colorscheme everforest

let g:airline_theme='everforest'
"highlight Normal guibg=none
"highlight NonText guibg=none

"custom cursor
augroup cursor_behaviour
    autocmd!

    " reset cursor on start:
    autocmd VimEnter * silent !echo -ne "\e[2 q"
    " cursor blinking bar on insert mode
    let &t_SI = "\e[5 q"
    " cursor steady block on command mode
    let &t_EI = "\e[2 q"

    " highlight current line when in insert mode
    autocmd InsertEnter * set cursorline
    " turn off current line highlighting when leaving insert mode
    autocmd InsertLeave * set nocursorline

augroup END

" NERDTree settings
nmap <Leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore = ['node_modules$']

" snippets
" font-face CSS
nmap <Leader>ff Go@font-face {<CR>font-family: ;<CR>font-weight: 400;<CR>font-style: normal;<CR>src: url('../assets/fonts/') format('truetype');<CR>}<Esc>4k$i''<Esc>

