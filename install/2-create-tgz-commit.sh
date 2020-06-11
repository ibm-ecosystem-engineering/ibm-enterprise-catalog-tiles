#!/usr/bin/env bash
echo 'tar and commit process started .............................'

sh 1-create-tgz.sh

cd ..

git add .
git commit -m "Script Updated"
git push
git tag

echo 'tar and commit process completed .............................'