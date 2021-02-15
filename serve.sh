#!/usr/bin/env bash

set -euo pipefail

npm run watch:all &
rbenv exec bundle exec jekyll serve
