#!/bin/bash
set -euxo pipefail

rm -f static/bootstrap.*gz
npm install bootstrap
version=$(yq -r -o json '.version' node_modules/bootstrap/package.json)
gzip -c ./node_modules/bootstrap/dist/css/bootstrap.min.css > "static/bootstrap.$version.min.css.gz"
gzip -c ./node_modules/bootstrap/dist/js/bootstrap.bundle.min.js > "static/bootstrap.$version.bundle.min.js.gz"

