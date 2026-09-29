#!/bin/bash
sleep 5
filepath="$(realpath $0)"
mypath="$(dirname "$filepath")"
cd $mypath

git clone $REPO_URL GCLOUD

mv -f GCLOUD/* .

bash run_gcloud.sh
