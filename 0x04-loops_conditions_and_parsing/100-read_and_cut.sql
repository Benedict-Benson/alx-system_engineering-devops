#!/usr/bin/env bash
# Displays the contents of the file `/etc/passwd`.
#   Only displays the username, user id, and user home directory path.

while read passwd; do
  echo "$passwd" | cut -d ':' -f1,3,6
done < "/etc/passwd"
