set -o vi

export PS1="\[\e[0;32m\]-> \[\e[0m\]"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/home/$USER/bin:$PATH"

function gdiff() {
    git diff --color=always "$@" | less -R
}
