#!/bin/bash
set -o xtrace
RUBYOPT='-rpsych' bundle install --binstubs --path vendor/bundle "$@"
