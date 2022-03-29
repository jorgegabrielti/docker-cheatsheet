#!/bin/sh
set -e 

case $1 in
  "gcloud-install")
    ./google-cloud-sdk/install.sh  
  ;;
  *)
    gcloud --version
  ;;
esac 
