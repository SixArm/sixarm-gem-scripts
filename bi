#!/bin/bash
# We put bundle gems in ./bundle, and binstubs in ./binstubs.
# We do this because in our experience it's the clearest especially
# across multiple versions of Rails, such as Rails 3 to Rails 4.
set -o xtrace
bundle install --path bundle --binstubs binstubs "$@"
