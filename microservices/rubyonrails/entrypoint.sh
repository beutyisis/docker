#!/bin/bash
set -e

# Remove a potencially pre-existing server.pid for Rails.
rm -f /myapp/tmp/pids/server.pid

# Then execution the container's main process (what's set as CMD in the Dockerfile)
exec "$@"
