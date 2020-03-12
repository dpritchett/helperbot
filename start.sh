#!/bin/bash

docker run --rm \
  --name mybot \
  --env SLACK_TOKEN=$SLACK_TOKEN \
  -v "$PWD"/config:/config \
  target/flottbot:latest \
  /flottbot
