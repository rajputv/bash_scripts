BEGIN { printf "Time\theader 1\theader 2\t header 3\theader 4\n"}
/^[[:digit:][:punct:][:space:][:alpha:]]+$/ { print $1, $4, $5, $6 }


# To run it
#sar -q | awk -f filename.awk
