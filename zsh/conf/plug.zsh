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
## autojump
[[ -s /home/john/.config/zsh/plugins/autojump/etc/profile.d/autojump.sh ]] && source /home/john/.config/zsh/plugins/autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

## enhancd
export ENHANCD_DIR=$HOME/.local/share/enhancd
source $ZPLUG/enhancd/init.sh

## other
source $ZPLUG/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZPLUG/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZPLUG/git.zsh
source $ZPLUG/k/k.sh


## theme -- bullet-train
BULLETTRAIN_PROMPT_ORDER=(
  time
  dir
  nvm
  git
)
BULLETTRAIN_TIME_12HR=true
BULLETTRAIN_TIME_FG='cyan'
BULLETTRAIN_TIME_BG='black'
BULLETTRAIN_DIR_BG='cyan'
BULLETTRAIN_DIR_FG='black'
BULLETTRAIN_NVM_FG='black'
BULLETTRAIN_NVM_BG='green'
BULLETTRAIN_GIT_COLORIZE_DIRTY=true
BULLETTRAIN_GIT_COLORIZE_DIRTY_BG_COLOR='red'
BULLETTRAIN_GIT_BG='yellow'
BULLETTRAIN_GIT_FG='black'

