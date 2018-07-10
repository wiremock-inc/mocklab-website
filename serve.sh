#!/usr/bin/env bash

set -euo pipefail

export MIXPANEL_ID=4ffc346824e52cbea5fddb40b3a9223b
npm run watch:all &
rbenv exec bundle exec jekyll serve
