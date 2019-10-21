curl "https://dry-scrubland-57892.herokuapp.com/sign-in" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"tester@test.com"'",
      "password": "'"test"'"
    }
  }'

echo
