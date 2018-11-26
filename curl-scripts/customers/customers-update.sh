#!/bin/bash

curl --include --request PATCH "http://localhost:4741/customers" \
--header "Content-Type: application/json" \
--data '{
  "customer": {
    "username": "'"${USERNAME}"'",
    "size": "'"${SIZE}"'",
    "fav_brand": "'"${BRAND}"'"
  }
}'
