parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}

PS1="\w\$(parse_git_branch) \$ "

eval "$(pyenv init -)"

alias ls='ls -p'
alias ll='ls -lp'
alias la='ls -ap'
alias lla='ls -alp'
alias vi='vim'

eval "$(hub alias -s)"
