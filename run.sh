#!/bin/bash

docker build -t rzpqyo/rails:ver1.0 $(dirname $0)
docker run -itd -p 8000:80 --link pgsql01:db --name rails01 rzpqyo/rails:ver1.0
