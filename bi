#!/bin/bash
# We install gems in ./vendor/bundle and binstubs in ./vendor/binstubs.
# We do this because in our experience it's the clearest and cleanest.
set -o xtrace
bundle install --path vendor/bundle --binstubs vendor/binstubs "$@"
