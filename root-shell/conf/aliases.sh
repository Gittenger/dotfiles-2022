# COMMAND SHORTCUTS
alias l='ls'
alias l.='ls -Ah'
alias ll='ls -lh'
alias ll.='ls -lAh'
alias mkd=mkdir
alias th=touch
alias lsd='find . -maxdepth 1 -type d -print0 | xargs -0 ls -da --color=auto'
alias lsf='find . -maxdepth 1 -type f -print0 | xargs -0 ls -a --color=auto'
alias lld='find . -maxdepth 1 -type d -print0 | xargs -0 ls -ldah --color=auto'
alias llf='find . -maxdepth 1 -type f -print0 | xargs -0 ls -ldah --color=auto'

# APP LAUNCHERS
alias nv=nvim
alias v='nvim .'
alias vs.='code .'

# MISC TASKS
alias clr="clear"

# NAVIGATION
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .conf="cd $HOME/.config"
alias bdir='cd /root/.config/bash'
alias bconf='cd /root/.config/bash/conf'
alias shdir="cd /home/john/.config/_shell-shared"
alias shconf="cd /home/john/.config/_shell-shared/conf"
alias nvconf='cd ~/.config/nvim'
alias vconf='cd ~/.config/vim'
alias .dot='cd /home/john/.dotfiles'
alias .d='cd /home/john/.dotfiles'
alias ~='cd /root'
alias ~john='cd /home/john'
alias ~j='cd /home/john'

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

