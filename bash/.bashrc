set -o vi

export PS1="\[$(tput bold)\]\[$(tput setaf 2)\]-> \[$(tput sgr0)\]"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/home/$USER/bin:$PATH"

function gdiff() {
    git diff --color=always "$@" | less -R
}
