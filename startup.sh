#!/bin/bash
if [[ -v API_URL ]]
then
    echo "env = {" >> env.js
    echo "  API_URL: '$API_URL'," >> env.js
    echo "}" >> env.js
else
    echo "API_URL enviroment variable must be set." >&2
    exit 1;
fi

set -e
# Apache gets grumpy about PID files pre-existing
rm -f /usr/local/apache2/logs/httpd.pid

exec httpd -DFOREGROUND