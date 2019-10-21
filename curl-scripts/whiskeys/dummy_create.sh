#!/bin/bash

curl "https://dry-scrubland-57892.herokuapp.com/whiskeys" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "whiskey": {
      "name": "'"Lagavulin 16"'",
      "variety": "'"Scotch"'",
      "region": "'"Islay"'",
      "age": "'"16"'",
      "primary_taste": "'"Explosive peat"'",
      "price": "'"59.99"'"
    }
  }'

echo
