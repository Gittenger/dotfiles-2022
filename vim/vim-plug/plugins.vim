" auto-install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/autoload/plugged')

    " get color schemes to work
    "Plug 'vim-scripts/CSApprox'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'sainnhe/sonokai'
    Plug 'sainnhe/everforest'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Prettier
    Plug 'prettier/vim-prettier'
    " COC
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Vim-snippets
    Plug 'honza/vim-snippets'
    " colorizer
    " Plug 'BourgeoisBear/clrzr'
    " hexokinase
    Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
    
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " this helps fzf know which directory is project root
    Plug 'airblade/vim-rooter'
    " EasyMotion
    Plug 'easymotion/vim-easymotion'
    " Vim Grepper for searching lines across all
    Plug 'mhinz/vim-grepper'
    " rainbow brackets
     Plug 'frazrepo/vim-rainbow' 
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes' 
    " commenting
    Plug 'tpope/vim-commentary'
    " vim-surround
    Plug 'tpope/vim-surround'
    " emmet
    Plug 'mattn/emmet-vim' 
    " tagalong
    Plug 'AndrewRadev/tagalong.vim'
    " Support for edge templates (adonis)
    "Plug 'watzon/vim-edge-template'
    " for react syntax-highlighting
    Plug 'maxmellon/vim-jsx-pretty'
    " js
    Plug 'pangloss/vim-javascript'
    " ts
    Plug 'HerringtonDarkholme/yats.vim'
    Plug 'leafgarland/typescript-vim'
    
call plug#end()
