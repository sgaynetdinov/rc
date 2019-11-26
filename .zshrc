".zshrc" 32L, 560C written                                                                                                                                      23,48         All
#####################
#       ALIAS       #
#####################
alias grep='grep --color=auto'
alias cat='bat'
alias vi='vim'
alias git='LC_ALL=en_GB hub'

alias ls='ls -p'
alias l='ls'
alias ll='ls -pl'
alias la='ls -pa'
alias lla='ls -pla'


#####################
#       PROMPT      #
#####################

# Git
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%f '
setopt PROMPT_SUBST

PROMPT='%~ ${vcs_info_msg_0_}'


#####################
#       OTHER       #
#####################
eval "$(pyenv init -)"
