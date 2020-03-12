#!/bin/bash

docker run --rm \
  --name mybot \
  --env SLACK_TOKEN \
  --env SLACK_WORKSPACE_TOKEN \
  --env SLACK_VERIFICATION_TOKEN \
  --env SLACK_EVENTS_CALLBACK_PATH \
  --env SLACK_INTERACTIONS_CALLBACK_PATH \
  -v "$PWD"/config:/config \
  target/flottbot:latest \
  /flottbot
