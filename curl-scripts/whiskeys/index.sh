#!/bin/bash

curl "http://localhost:4741/whiskeys" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
