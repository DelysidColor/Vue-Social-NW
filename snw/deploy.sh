#!/usr/bit/env sh

set -e

npm run build

cd dist

git init
git add -A
git commit -m 'New Deployment'
git push -f git@github.com:DelysidColor/Vue-Social-NW.git master:gh-pages

cd -