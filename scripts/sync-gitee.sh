#!/bin/bash

cd /tmp

# helm3-charts
git clone https://github.com/rancher/helm3-charts.git
cd helm3-charts
git push -f https://${GITEE_ACC}:${GITEE_PW}@gitee.com/rancher/helm3-charts.git
cd /tmp && rm -rf *

# kontainer-driver-metadata
git clone https://github.com/rancher/kontainer-driver-metadata.git
cd kontainer-driver-metadata
git push -f https://${GITEE_ACC}:${GITEE_PW}@gitee.com/rancher/kontainer-driver-metadata.git
cd /tmp && rm -rf *

# system-charts
# -b release-v2.2
git clone -b release-v2.2 https://github.com/rancher/system-charts.git
cd system-charts
git push -f https://${GITEE_ACC}:${GITEE_PW}@gitee.com/rancher/system-charts.git
cd /tmp && rm -rf *

# -b release-v2.3
git clone -b release-v2.3 https://github.com/rancher/system-charts.git
cd system-charts
git push -f https://${GITEE_ACC}:${GITEE_PW}@gitee.com/rancher/system-charts.git
cd /tmp && rm -rf *

# -b release-v2.4
git clone -b release-v2.4 https://github.com/rancher/system-charts.git
cd system-charts
git push -f https://${GITEE_ACC}:${GITEE_PW}@gitee.com/rancher/system-charts.git
cd /tmp && rm -rf *

# charts
git clone https://github.com/rancher/charts.git
cd charts
git push -f https://${GITEE_ACC}:${GITEE_PW}@gitee.com/rancher/charts.git
cd /tmp && rm -rf *

git clone https://github.com/xiaoluhong/server-chart.git
cd server-chart
git push -f https://${GITEE_ACC}:${GITEE_PW}@gitee.com/rancher/server-chart.git
cd /tmp && rm -rf *

# ansible
git clone https://github.com/xiaoluhong/ansible.git
cd ansible
touch update.txt
echo $(date +%Y-%m-%d:%H:%M:%S) > update.txt
git add .
git commit -m "update $(date +%Y-%m-%d:%H:%M:%S)"
git push -f https://${GITHUB_USERNAME}:${GITHUB_PASSWORD}@github.com/xiaoluhong/ansible.git
cd /tmp && rm -rf *

# website file-download
git clone -b file-download https://${GITHUB_USERNAME}:${GITHUB_PASSWORD}@github.com/cnrancher/website.git
cd website
touch update.txt
echo $(date +%Y-%m-%d:%H:%M:%S) > update.txt
git add .
git commit -m "update $(date +%Y-%m-%d:%H:%M:%S)"
git push -f https://${GITHUB_USERNAME}:${GITHUB_PASSWORD}@github.com/cnrancher/website.git
cd /tmp && rm -rf *

# rancher docs2
git clone -b v1.4.x-rancher https://${GITHUB_USERNAME}:${GITHUB_PASSWORD}@github.com/cnrancher/docs2.git
cd docs2
touch update.txt
echo $(date +%Y-%m-%d:%H:%M:%S) > update.txt
git add .
git commit -m "update $(date +%Y-%m-%d:%H:%M:%S)"
git push -f https://${GITHUB_USERNAME}:${GITHUB_PASSWORD}@github.com/cnrancher/docs2.git
cd /tmp && rm -rf *

# runlike
git clone https://github.com/cnrancher/runlike.git
cd runlike
touch update.txt
echo $(date +%Y-%m-%d:%H:%M:%S) > update.txt
git add .
git commit -m "update $(date +%Y-%m-%d:%H:%M:%S)"
git push -f https://${GITHUB_USERNAME}:${GITHUB_PASSWORD}@github.com/cnrancher/runlike.git
cd /tmp && rm -rf *
