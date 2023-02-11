#!/bin/bash

filename="version.properties"
IFS=$'\n'
for next in $(cat $filename); do
    if [[ "$next" == *"REPO_TAG"* ]]; then
      # shellcheck disable=SC2163
      export "$next"
      echo "$REPO_TAG"
    fi
done
