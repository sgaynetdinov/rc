if status is-interactive
    # Commands to run in interactive sessions can go here
end

if type -q exa
  alias l "exa -l -g --icons --git --tree --level=1"
  alias ls "l"
  alias ll "l --level=2"
  alias lll "l --level=3"
  alias la "l -a"
  alias lla "ll -a"
  alias llla "lll -a"
end

if type -q git
  alias g "git"
end

# start theme startship (install from brew)
starship init fish | source

set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
# pyenv init - | source

# https://github.com/mikenye/docker-youtube-dl
alias youtube-dl='docker run --rm -i \
                  -e PGID=$(id -g) \
                  -e PUID=$(id -u) \
                  -v $(pwd):/workdir:rw \
                  ghcr.io/mikenye/docker-youtube-dl:latest'

