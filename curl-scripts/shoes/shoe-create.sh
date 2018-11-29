#!/bin/bash

curl "http://localhost:4741/shoes" \
--include \
--request POST \
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
