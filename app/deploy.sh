#!/bin/bash

echo test
docker pull tiller/tiller-back
docker stop backend
docker rm backend
docker run --name backend -d -p 80:80 tiller/tiller-back
