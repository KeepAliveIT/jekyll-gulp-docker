#!/bin/bash
set -e

# Run on build
bundle install --quiet
npm install --save-dev --quiet

exec "$@"