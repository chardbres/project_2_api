#!/bin/bash

curl "https://dry-scrubland-57892.herokuapp.com/whiskeys" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "whiskey": {
      "name": "'"${NAME}"'",
      "type": "'"${TYPE}"'",
      "region": "'"${REGION}"'",
      "age": "'"${AGE}"'",
      "primary_taste": "'"${TASTE}"'",
      "price": "'"${PRICE}"'"
    }
  }'

echo
