#!/bin/bash

set -ex

cd "$(dirname "$0")"

if [[ $1 == "-f" ]]; then
  echo "Forcing a clean install…"
  rm -rf ../sl-data
  rm -rf ../sl-webhooks
fi

if [[ ! -d ../sl-data ]]; then
  git clone --branch develop git@github.com:adriancarriger/sl-data.git ../sl-data
fi

if [[ ! -d ../sl-webhooks ]]; then
  git clone --branch develop git@github.com:adriancarriger/sl-webhooks.git ../sl-webhooks
fi
