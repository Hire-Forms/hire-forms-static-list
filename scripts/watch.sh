#!/bin/sh

node_modules/.bin/browserify src/index.jsx \
  --detect-globals false \
  --extension=.jsx \
  --external classnames \
  --external react \
  --standalone HireFormsStaticList \
  --transform [ babelify --plugins object-assign ] \
  --verbose | derequire > build/index.js

# --outfile build/index.js \