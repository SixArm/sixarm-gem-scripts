#!/bin/bash
set -o xtrace
RUBYOPT='-rpsych' bundle install --path vendor/bundle --binstubs bin/stubs "$@"
