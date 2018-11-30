#!/bin/bash

curl "http://localhost:4741/shoes/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "shoe": {
      "brand": "'"${BRAND}"'",
      "model": "'"${MODEL}"'",
      "size": "'"${SIZE}"'",
      "color": "'"${COLOR}"'"
    }
  }'
# change text to the columns that you wish to use in your table
echo
