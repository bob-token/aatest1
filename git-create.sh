#!/bin/sh


repo_name=$1
test -z $repo_name && echo "Repo name required." 1>&2 && exit 1

curl -u 'xhban520@gmail.com' https://api.github.com/user/repos -d "{\"name\":\"$repo_name\"}"

git init
git add .
git commit -am'first init'
git remote add origin "https://github.com/bob-token/$repo_name.git"
git push origin master
