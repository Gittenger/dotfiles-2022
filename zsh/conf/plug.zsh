########
# FZF ##
# ------
if [[ ! "$PATH" == *$ZPLUG/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}$ZPLUG/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$ZPLUG/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "$ZPLUG/fzf/shell/key-bindings.zsh"

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' --color=fg:#f9d2fa,bg:#151f1a,hl:#67a1db --color=fg+:#ff91f6,bg+:#071a0d,hl+:#70dbff --color=info:#e6e6ca,prompt:#ff0000,pointer:#af5fff --color=marker:#87ff00,spinner:#f3ff05,header:#87afaf'

########

source $ZPLUG/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZPLUG/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZPLUG/git.zsh