ulimit -n 10240
export JOBS=max

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ -f ~/.bash_aliases ]; then
   source ~/.bash_aliases
fi

if [ -f ~/.ps1 ]; then
   source ~/.ps1
fi

if [ -i ~/.bash_path ]; then
   source ~/.bash_path
fi

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
