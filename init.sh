#!/bin/sh

set -ex

cd "$(dirname "$0")"

if [[ $1 == "-f" ]]; then
  echo "Forcing a clean install…"
  rm -rf ../sl-data
  rm -rf ../sl-lambda
fi

if [[ ! -d ../sl-data ]]; then
  git clone --branch develop git@github.com:adriancarriger/sl-data.git ../sl-data
fi

if [[ ! -d ../sl-server ]]; then
  git clone --branch develop git@github.com:adriancarriger/sl-server.git ../sl-server
fi

if [[ ! -d ../sl-lambda ]]; then
  git clone --branch develop git@github.com:adriancarriger/sl-lambda.git ../sl-lambda
fi
