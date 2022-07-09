if status is-interactive
    # Commands to run in interactive sessions can go here
end

if type -q exa
  alias l "exa -l -g --icons --git --tree --level=1"
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


if type -q tailscale
    alias tailscale /Applications/Tailscale.app/Contents/MacOS/Tailscale
end
