#!/bin/bash

set -ex

cd "$(dirname "$0")"

docker-compose exec data graphcool local stop
docker-compose down
