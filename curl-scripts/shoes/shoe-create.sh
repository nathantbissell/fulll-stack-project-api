#!/bin/bash

curl --include --request POST "http://localhost:4741/shoes" \
--header "Content-Type: application/json" \
--data '{
  "shoe": {
    "brand": "'"${BRAND}"'",
    "model": "'"${MODEL}"'",
    "size": "'"${SIZE}"'",
    "color": "'"${COLOR}"'"
  }
}'
