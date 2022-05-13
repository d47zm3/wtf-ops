#!/usr/bin/env bash

url="${1}"

if [[ -z ${url} ]]
then
  echo "usage: ${0} <url to test>"
  exit 1
fi

echo "GET ${url} | vegeta attack -duration=10s -rate 30 | tee results.bin | vegeta report
rm -f results.bin
