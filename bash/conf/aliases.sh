# COMMAND SHORTCUTS
alias l='ls'
alias l.='ls -Ah'
alias ll='ls -lh'
alias ll.='ls -lAh'
alias 00='npm start'
alias mkd=mkdir
alias th=touch
alias lsd='find . -maxdepth 1 -type d -print0 | xargs -0 ls -da --color=auto'
alias lsf='find . -maxdepth 1 -type f -print0 | xargs -0 ls -a --color=auto'
alias lld='find . -maxdepth 1 -type d -print0 | xargs -0 ls -ldah --color=auto'
alias llf='find . -maxdepth 1 -type f -print0 | xargs -0 ls -ldah --color=auto'

# APP LAUNCHERS
alias codi=codium
alias nv=nvim
alias v='nvim .'
alias vs.='code .'
alias f.='files .'
alias spotify='flatpak run com.spotify.Client &!'
alias gch='google-chrome &!'
alias ff='firefox &!'
alias wrtr='libreoffice --writer $1 &'
alias aw='ansiweather'

# MISC TASKS
alias pyserve='python -m http.server 8000'
alias xgammmaset='xgamma -ggamma .85 -rgamma .75 -bgamma .85'
alias clr="clear"

# NAVIGATION
alias ..='cd ../'
alias ...=../../
alias ....=../../../
alias zdir='cd ${ZDOTDIR}'
alias zconf='cd ${ZDOTDIR}/conf'
alias zrc='vim $ZDOTDIR/.zshrc'
alias bdir="cd $BASHDIR"
alias bconf="cd $BASHDIR/conf"
alias brc="vim $BASHDIR/bashrc"
alias nvconf='cd ~/.config/nvim'
alias vconf='cd ~/.config/vim'
alias lapps='cd $LOCALAPPS'
alias condrc='vim $LOCALAPPS/miniconda3/condarc'
alias zhist='nv $ZDOTDIR/history'
alias histf='cd $LOCALAPPS/sh-hist-archives/simple'
alias .dot='cd ~/.dotfiles'
alias .d='cd ~/.dotfiles'
alias ~='cd $HOME'
alias ~~='cd ${HSH}'
alias ~.='cd ${XTRA}'

# OTHER USEFUL SCRIPTS
alias tree="tree -I node_modules"
alias gorg="git remote show origin"

# FZF STUFF
alias fz="fzf"
alias fzh="fd -H -t f | fzf" # hidden files
alias fzi="fd -I -t f | fzf" # don't ignore
alias fzhi="fd -I -H -t f | fzf" # hidden and don't ignore
alias fzd="fd -t d | fzf"
alias fzdh="fd -H -t d | fzf" # directory search hidden
