#!/bin/bash

cd "$(dirname "$0")"

git add -u
git commit -m \""$(date +%d.%m.%Y)"\"
git push
