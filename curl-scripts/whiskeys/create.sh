#!/bin/bash

curl "http://localhost:4741/whiskeys" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "whiskey": {
      "name": "'"${NAME}"'",
      "variety": "'"${VARIETY}"'",
      "distiller": "'"${DISTILLER}"'",
      "region": "'"${REGION}"'",
      "age": "'"${AGE}"'",
      "primary_taste": "'"${TASTE}"'",
      "price": "'"${PRICE}"'",
      "tasting_date": "'"${DATE}"'",
      "description": "'"${DESC}"'"
    }
  }'

echo
