#!/bin/bash

curl "https://dry-scrubland-57892.herokuapp.com/examples" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
