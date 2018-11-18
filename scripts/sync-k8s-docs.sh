#!/usr/bin/bash

git clone https://github.com/xiaoluhong/k8s-website.git
cd k8s-website
touch $(date +%Y-%m-%d)
git add .
git commit -m "update"
git push -f https://${GITHUB_USERNAME}:${GITHUB_PASSWORD}@xiaoluhong/k8s-website.git