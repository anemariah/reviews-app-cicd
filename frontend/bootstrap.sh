#!/bin/sh

echo "Detected backend URL from env: $BACKEND_ENDPOINT"
echo "Next step: updating backend URL in app.js..."

# update the backend address in static code before nginx launches
sed -i "s|BACKEND_URL_STRING|${BACKEND_ENDPOINT}|g" app.js

echo "backend URL is updated."

# start the main container process - nginx application
nginx -g "daemon off;"
