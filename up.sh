#!/bin/bash

set -ex

cd "$(dirname "$0")"

./init.sh

if [[ $1 == "-f" ]]; then
  echo "Forcing a clean container state"
  docker-compose down --volumes --remove-orphans
  docker-compose up -d --build --force-recreate
else
  docker-compose up -d
fi

docker-compose logs -f
