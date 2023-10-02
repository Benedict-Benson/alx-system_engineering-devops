#!/usr/bin/env bash
# Task 9
terminator () {
    rm /var/run/myscript.pid
    exit
}
echo "$$" > /var/run/myscript.pid
while true
do
  echo "To infinity and beyond"
  sleep 2
  trap 'echo "Y U no love me?"' SIGINT
  trap 'echo "I hate the kill command"; terminator' SIGTERM
  trap 'terminator' SIGQUIT
done
