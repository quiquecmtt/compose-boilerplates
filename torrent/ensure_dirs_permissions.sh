#! /bin/bash

source .env

if [ -z "${MEDIA_LOCATION}" ]; then
  echo "Error: MEDIA_LOCATION is not set."
  exit 1
fi

mkdir -pv ${MEDIA_LOCATION}/{Books,Downloads,Movies,TV-Series,Watch}
sudo chown -v -R ${USER}: ${MEDIA_LOCATION}/{Books,Downloads,Movies,TV-Series,Watch}