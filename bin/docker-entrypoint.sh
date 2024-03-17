#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /usr/src/app/tmp/pids/server.pid

echo "BUNDLE INSTALL"
bundle check || bundle install --jobs 4
# bundle exec rake assets:precompile
# bundle exec rake assets:clean
# bundle exec rake db:migrate


# If running the rails server then create or migrate existing database
if [ "${3}" == "rails" ] && [ "${4}" == "s" ]; then
  # ./bin/rails db:prepare
  echo "ARGUMENTOS DETECTADOS"
fi

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
