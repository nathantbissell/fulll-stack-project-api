#!/bin/bash

curl --include --request PATCH "http://localhost:4741/shoes/${ID}" \
--header "Content-Type: application/json" \
--data '{
  "shoe": {
    "brand": "'"${BRAND}"'",
    "model": "'"${MODEL}"'"
    "size": "'"${SIZE}"'",
    "color": "'"${COLOR}"'"
  }
}'
