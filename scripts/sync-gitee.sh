#!/bin/bash

git clone https://github.com/xiaoluhong/rancher-images-localization.git
cd rancher-images-localization
touch update.txt
echo $(date +%Y-%m-%d:%H:%M:%S) > update.txt
git add .
git commit -m "update"
git push -f https://${GITEE_ACC}:${GITEE_PW}@gitee.com/hongxl/rancher-images-localization.git
cd && rm -rf *

git clone https://github.com/xiaoluhong/k8s-website.git
cd k8s-website
touch update.txt
echo $(date +%Y-%m-%d:%H:%M:%S) > update.txt
git add .
git commit -m "update"
git push -f https://${GITHUB_USERNAME}:${GITHUB_PASSWORD}@github.com/xiaoluhong/k8s-website.git
cd && rm -rf *

git clone https://github.com/xiaoluhong/ansible.git
cd ansible
touch update.txt
echo $(date +%Y-%m-%d:%H:%M:%S) > update.txt
git add .
git commit -m "update"
git push -f https://${GITHUB_USERNAME}:${GITHUB_PASSWORD}@github.com/xiaoluhong/ansible.git
cd && rm -rf *

git clone -b file-download https://${GITHUB_USERNAME}:${GITHUB_PASSWORD}@github.com/cnrancher/website.git
cd website
touch update.txt
echo $(date +%Y-%m-%d:%H:%M:%S) > update.txt
git add .
git commit -m "update"
git push -f https://${GITHUB_USERNAME}:${GITHUB_PASSWORD}@github.com/cnrancher/website.git
cd && rm -rf *

git clone https://github.com/cnrancher/runlike.git
cd runlike
touch update.txt
echo $(date +%Y-%m-%d:%H:%M:%S) > update.txt
git add .
git commit -m "update"
git push -f https://${GITHUB_USERNAME}:${GITHUB_PASSWORD}@github.com/cnrancher/runlike.git
cd && rm -rf *

git clone https://github.com/xiaoluhong/server-chart.git
cd server-chart
touch update.txt
echo $(date +%Y-%m-%d:%H:%M:%S) > update.txt
git add .
git commit -m "update"
git push -f https://${GITEE_ACC}:${GITEE_PW}@${gitee_repo_url}/server-chart.git
cd && rm -rf *

