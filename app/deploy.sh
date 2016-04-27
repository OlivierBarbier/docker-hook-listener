#!/bin/bash

echo test
docker pull hokmah/tiller-back
docker stop backend
docker rm backend
docker run --name backend -d -p 80:80 hokmah/tiller-back
