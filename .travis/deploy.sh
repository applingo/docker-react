#!/bin/bash
set -e
ssh centos@140.227.122.189 -i ./deploy_key -p 22 
docker-compose up -d