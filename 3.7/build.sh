#!/bin/bash -x
set -e

rm -rf layer && mkdir -p layer

docker build -t py37-pandas-lambda-layer .
CONTAINER=$(docker run -d py37-pandas-lambda-layer false)

docker cp $CONTAINER:/opt/python layer

docker rm $CONTAINER
