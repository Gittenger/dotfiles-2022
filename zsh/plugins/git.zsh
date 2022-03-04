function current_branch() {
  git_current_branch
}

# Check if main exists and use instead of master
function git_main_branch() {
  command git rev-parse --git-dir &>/dev/null || return
  local ref
  for ref in refs/{heads,remotes/{origin,upstream}}/{main,trunk}; do
    if command git show-ref -q --verify $ref; then
      echo ${ref:t}
      return
    fi
  done
  echo master
}

# Check for develop and similarly named branches
function git_develop_branch() {
  command git rev-parse --git-dir &>/dev/null || return
  local branch
  for branch in dev devel development; do
    if command git show-ref -q --verify refs/heads/$branch; then
      echo $branch
      return
    fi
  done
  echo develop
}


alias g='git'
alias gaa='git add --all'
alias gap='git apply'
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gbr='git branch --remote'
alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gcmsg='git commit -m'
alias gcb='git checkout -b'
alias gcl='git clone --recurse-submodules'
alias gcm='git checkout $(git_main_branch)'
alias gcd='git checkout $(git_develop_branch)'
alias gco='git checkout'
alias gd='git diff'
alias gds='git diff --staged'
alias gf='git fetch'
alias gfo='git fetch origin'

function ggp() {
  if [[ "$#" != 0 ]] && [[ "$#" != 1 ]]; then
    git push origin "${*}"
  else
    [[ "$#" == 0 ]] && local b="$(git_current_branch)"
    git push origin "${b:=$1}"
  fi
}

alias ggpull='git pull origin "$(git_current_branch)"'
alias ggpush='git push origin "$(git_current_branch)"'

alias gl='git pull'
alias glg='git log --stat'
alias gm='git merge'
alias gr='git remote'
alias gra='git remote add'
alias grh='git reset'
alias grhh='git reset --hard'
alias gst='git status'
alias gsb='git status -sb'
alias gsh='git show'

