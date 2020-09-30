#!/bin/bash
set -e

# Run on build
bundle install --quiet
npm ci

exec "$@"