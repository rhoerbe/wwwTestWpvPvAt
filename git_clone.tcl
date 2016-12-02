#!/usr/bin/expect

# clone gh-pages branch into gh-pages folder

# configure PASSPHRASE in travis-ci enviromnet

spawn git clone -b gh-pages git@github.com:rhoerbe/wwwTestWpvPvAt.git .
expect "Enter passphrase for key:"
send "$env(PASSPHRASE)\n"
interact
