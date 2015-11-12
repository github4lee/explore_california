#export PS1="Jerry$"

alias __git_ps1="git branch 2>/dev/null | grep '*' | sed 's/* \(.*\)/(\1)/'"

if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
  export PS1='YOURNAME[\W]$(__git_ps1 "(%s)"): '
fi
