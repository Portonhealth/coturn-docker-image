#!/bin/sh

# If command starts with an option, prepend with turnserver binary.
if [ "${1:0:1}" == '-' ]; then
  set -- turnserver "$@"
fi

(cd /var/lib/health-check; echo "in health-check"; ls ; node bin/www &)

exec $(eval "echo $@")
