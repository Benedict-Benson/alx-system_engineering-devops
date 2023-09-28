#!/usr/bin/env bash
# Tells a story based on the contents of the `/etc/passwd` file.

while IFS=':' read username password uid gid info home shell; do
  echo "The user $username is part of the $gid gang,"\
  "lives in $home and rides $shell."\
  "$uid's place is protected by the passcode $password,"\
  "more info about the user here: $info"
done < "/etc/passwd"
