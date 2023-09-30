#!/bin/bash

password=$(
  find .password-store -type f -name "*.gpg" |
    sed -E 's/.password-store\/(.*).gpg/\1/g' |
    fzf --height 10
)

if [[ $(echo $password | grep -o -w "otp") == '' ]]; then
  pass -c $password >/dev/null
else
  pass otp -c $password >/dev/null
fi
