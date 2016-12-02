#!/usr/bin/expect

# push current repo

# configure PASSPHRASE in travis-ci enviromnet

spawn git push
expect "Enter passphrase for key:"
send "$env(PASSPHRASE)\n"
interact
