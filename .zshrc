#####################
#       LOCALE      #
#####################
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_COLLATE="C"
export LC_TIME="C"
export LC_NUMERIC="C"
export LC_MONETARY="C"
export LC_MESSAGES="en_US.UTF-8"
export LC_ALL="" 


#####################
#       ALIAS       # 
#####################
alias grep='grep -r --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias vi='vim'
alias git='hub'
alias tree='tree -L 2'
alias mkdir='mkdir -p'

alias ls='ls -p'
alias l='ls'
alias ll='ls -pl'
alias la='ls -pa'
alias lla='ls -pla'


#####################
#       PROMPT      #
#####################

# Git (https://github.com/git/git)
autoload -Uz compinit && compinit
autoload -Uz vcs_info
precmd() { vcs_info }
setopt PROMPT_SUBST
PROMPT='%~ ${vcs_info_msg_0_}'
zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%f '

# Pyenv (https://github.com/pyenv/pyenv)
eval "$(pyenv init -)"

# nvm (https://github.com/nvm-sh/nvm)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
