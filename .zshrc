export EDITOR="/usr/local/bin/vim"

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
#       ZLIB        #
#####################
export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

#####################
#       ALIAS       # 
#####################
alias grep='grep -r --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias vi='vim'
alias tree='tree -L 2'
alias mkdir='mkdir -p'
alias :q='exit'

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

# Load pyenv automatically (https://github.com/pyenv/pyenv)
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

###############################
#       AUTO SUGGECTIONS      #
###############################

# nvm (https://github.com/nvm-sh/nvm)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# https://github.com/zsh-users/zsh-autosuggestions/
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=9"

# Completion for kitty
autoload -Uz compinit
compinit
kitty + complete setup zsh | source /dev/stdin

. /usr/local/opt/asdf/asdf.sh

export PATH="$PATH:/Users/sergey/.local/bin"  # pipx
export PATH="$HOME/.volta/bin:$PATH"  # volta (nodejs)
export PATH="/usr/local/opt/bzip2/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

