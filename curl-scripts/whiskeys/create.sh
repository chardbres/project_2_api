#!/bin/bash

curl "http://https://dry-scrubland-57892.herokuapp.com/whiskeys" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "whiskey": {
      "name": "'"${NAME}"'",
      "variety": "'"${VARIETY}"'",
      "region": "'"${REGION}"'",
      "age": "'"${AGE}"'",
      "primary_taste": "'"${TASTE}"'",
      "price": "'"${PRICE}"'"
    }
  }'

echo
