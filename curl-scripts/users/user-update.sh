#!/bin/bash

curl "http://localhost:4741/users/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "user": {
      "email": "'"${EMAIL}"'",
      "size": "'"${SIZE}"'",
      "fav_brand": "'"${FAV_BRAND}"'",
      "fav_color": "'"${FAV_COLOR}"'"
    }
  }'

echo
