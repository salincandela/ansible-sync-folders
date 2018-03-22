#!/bin/bash
# {{ansible_managed}}

cd $(PWD)/$GIT_LOCAL_PATH
git config --local user.name $USER_NAME
git config --local user.email $USER_EMAIL
git add -A
git commit -m "User $USER_NAME"
git push origin master
