#!/bin/bash
set -e
openssl aes-256-cbc -K $encrypted_dfdcfd5172af_key -iv $encrypted_dfdcfd5172af_iv -in deploy_key.enc -out ./deploy_key -d

ssh centos@140.227.122.189 -i ./deploy_key -p 22 
docker-compose up -d