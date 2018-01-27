#bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi

# tmp: move files to /tmp instead of removing them outright.
# /tmp is cleaned up on reboot or so, so there is time to rectify mistakes.
#
# Usage: tmp [files or directories...]

# batch "do stuff to a file" files...
function batch() {
    p="$1"
    shift
    for x in "$@"; do
        eval '$p "$x"' || echo "batch: '$p $x' returned $?" >&2
    done
}

# TODO: fix issues with tmp-ing multiple directories with the same name
function mvsuffix() {
    f="$2"; s=-1
    while true; do
        if ! test -f "$f"; then
            mv "$1" "$f"; echo "$f"; return
        fi
        s=$(($s+1))
        f="$2.$s"
    done
}

function tmp1() { mvsuffix "$1" /tmp/"$(basename "$1")"; }
alias tmp='batch tmp1'

# Alias for command fixer
eval $(thefuck --alias)

source ~/.bash_path
