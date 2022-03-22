########
# FZF ##
# ------
if [[ ! "$PATH" == *$LOCALAPPS/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}$LOCALAPPS/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$LOCALAPPS/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "$LOCALAPPS/fzf/shell/key-bindings.bash"

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' --color=fg:#f9d2fa,bg:#151f1a,hl:#67a1db --color=fg+:#ff91f6,bg+:#071a0d,hl+:#70dbff --color=info:#e6e6ca,prompt:#ff0000,pointer:#af5fff --color=marker:#87ff00,spinner:#f3ff05,header:#87afaf'

########
## autojump
[[ -s /home/john/.config/bash/plugins/autojump/etc/profile.d/autojump.sh ]] && source /home/john/.config/bash/plugins/autojump/etc/profile.d/autojump.sh

## enhancd
export ENHANCD_DIR=$HOME/.local/share/enhancd
source $BPLUG/enhancd/init.sh

## other
source $BPLUG/git.sh
