function proxy_ssh
    ssh -N -C -q -D $argv
end
