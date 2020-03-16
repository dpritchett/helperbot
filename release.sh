#!/bin/bash
set -eo pipefail

docker build -t dpritchett/helperbot:dev-latest .

docker tag dpritchett/helperbot:dev-latest registry.heroku.com/helperbott/web

heroku container:login
heroku container:push web
heroku container:release web
