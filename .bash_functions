findandkill() {
  port=$(lsof -n -i4TCP:$1 | grep LISTEN | awk '{ print $2 }')
  kill -9 $port
}