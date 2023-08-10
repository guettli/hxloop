#!/bin/bash
set -euxo pipefail

rm -f static/htmx.*.min.js.gz
npm install htmx.org
version=$(yq -r -o json '.version' node_modules/htmx.org/package.json)
cp ./node_modules/htmx.org/dist/htmx.min.js.gz "static/htmx.$version.min.js.gz"
