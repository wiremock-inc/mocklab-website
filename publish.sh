#!/usr/bin/env bash

set -euo pipefail

npm run raml
export ALGOLIA_API_KEY='61e953f848b8a1d05c3be4620a5286db'
# rbenv exec bundle exec jekyll algolia push
rbenv exec bundle exec jekyll build

pushd ../mocklab-website
git reset --hard origin/gh-pages
git pull
cp -rf ../mocklab-docs-sources/_site/* .
git checkout CNAME
git add -A
git commit -m "Updated"
git push
popd
