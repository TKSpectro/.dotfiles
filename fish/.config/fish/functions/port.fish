function port -d 'Find applications running on a specific port'
    set -l port (string match -r '^[0-9]+$' $argv[1])
    if test -z "$port"
        echo "Usage: port <port_number>"
        return 1
    end

    lsof -i :$port 2>/dev/null
end