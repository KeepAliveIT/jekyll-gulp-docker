#!/bin/bash
set -e

# Run on container launch to ensure we have a clean state of jekyll and node libraries.
chown jekyll:jekyll -R /srv/jekyll
chmod -R 777 /srv/jekyll
bundle install --quiet
npm install --save-dev --quiet

exec "$@"