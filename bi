#!/bin/bash
set -o xtrace
bundle install --binstubs --path vendor/bundle "$@"
