#!/bin/bash
set -e

# Run on container launch to ensure we have a clean state of jekyll and node libraries.
usermod -a -G jekyll root
usermod -a -G root jekyll
bundle install --quiet
npm install --save-dev --quiet

exec "$@"