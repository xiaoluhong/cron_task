#!/bin/bash

export repo_list="rancher rke docs system-charts helm3-charts charts rancher-catalog community-catalog install-docker rio k3s k3os submariner"
export github_repo_url=github.com/rancher
export gitee_repo_url=gitee.com/rancher

sync_repo_github_gitee_rancher ()
{
    for repo in $repo_list;
    do
        cd
        git clone https://${github_repo_url}/${repo}.git
        cd ${repo}
        touch update.txt
        echo $(date +%Y-%m-%d) > update.txt
        git add .
        git commit -m "update"
        git push -f https://${GITEE_ACC}:${GITEE_PW}@${gitee_repo_url}/${repo}.git
        cd && rm -rf ${repo}

    done

}

sync_repo_github_gitee_rancher

git clone https://github.com/xiaoluhong/rancher-images-localization.git
cd rancher-images-localization
touch update.txt
echo $(date +%Y-%m-%d) > update.txt
git add .
git commit -m "update"
git push -f https://${GITEE_ACC}:${GITEE_PW}@gitee.com/hongxl/rancher-images-localization.git      
cd && rm -rf *

git clone https://github.com/xiaoluhong/k8s-website.git
cd k8s-website
touch update.txt
echo $(date +%Y-%m-%d) > update.txt
git add .
git commit -m "update"
git push -f https://${GITHUB_USERNAME}:${GITHUB_PASSWORD}@github.com/xiaoluhong/k8s-website.git
cd && rm -rf *

git clone https://github.com/xiaoluhong/ansible.git
cd ansible
touch update.txt
echo $(date +%Y-%m-%d) > update.txt
git add .
git commit -m "update"
git push -f https://${GITHUB_USERNAME}:${GITHUB_PASSWORD}@github.com/xiaoluhong/ansible.git
cd && rm -rf *

git clone -b file-download https://${GITHUB_USERNAME}:${GITHUB_PASSWORD}@github.com/cnrancher/website.git
cd website
touch update.txt
echo $(date +%Y-%m-%d) > update.txt
git add .
git commit -m "update"
git push -f https://${GITHUB_USERNAME}:${GITHUB_PASSWORD}@github.com/cnrancher/website.git
cd && rm -rf *

git clone https://github.com/cnrancher/runlike.git
cd runlike
touch update.txt
echo $(date +%Y-%m-%d) > update.txt
git add .
git commit -m "update"
git push -f https://${GITHUB_USERNAME}:${GITHUB_PASSWORD}@github.com/cnrancher/runlike.git
cd && rm -rf *

git clone https://github.com/xiaoluhong/server-chart.git
cd server-chart
touch update.txt
echo $(date +%Y-%m-%d) > update.txt
git add .
git commit -m "update"
git push -f https://${GITEE_ACC}:${GITEE_PW}@${gitee_repo_url}/server-chart.git
cd && rm -rf *

