#!/usr/bin/env bash

git config --global user.email "jenkins@devl11"
git config --global user.name "Jenkins"

chown jekyll /var/data

jekyll build

git add -A
git commit -m 'generated _site'
git push origin HEAD:master