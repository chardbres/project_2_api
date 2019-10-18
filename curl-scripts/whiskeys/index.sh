#!/bin/bash

curl "http://https://dry-scrubland-57892.herokuapp.com/whiskeys" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
