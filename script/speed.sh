x=`iperf3 $2 -t 1 -J -c $1 | grep bits_per_second | tail -1 | cut -f 2 -d ':' | cut -f 1 -d '.' | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'`
echo -n "   "
echo "print($x/1000000)" |lua
