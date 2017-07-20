# ...because lsd?
alias lsd='ls -d */'

alias gcl='git clone'
alias ga='git add'
alias grm='git rm'
alias gap='git add -p'
alias gm="git merge"
alias g='git'
alias gl='git pull'
alias gst='git status'
alias gs='git status'
alias gss='git status -s'
alias gp='git push'
alias gpo='git push origin'
alias gcount='git shortlog -sn'
alias gb='git branch'
alias gba='git branch -a'
alias gcom='git checkout master'
alias gcb='git checkout -b'
alias gd='git diff'
alias gco='git checkout'
alias gcp='git cherry-pick'

alias kc='kubectl'
alias kcc='kubectl config'
alias kcd='kc describe'
alias kcdel-all='kc get pod |  cut -d " " -f1 - | xargs -n1 -P 10 kubectl delete pod'

alias fwp='filewatcher $@ "python $@"'

alias ..='cd ..'
alias ...='cd ../..'
