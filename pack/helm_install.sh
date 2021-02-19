#!/bin/bash

cd /tmp/

wget https://get.helm.sh/helm-v3.5.2-linux-amd64.tar.gz

tar -xvzf /tmp/helm-v3.5.2-linux-amd64.tar.gz

mv linux-amd64/helm /usr/local/bin/helm