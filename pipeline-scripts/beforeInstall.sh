#!/usr/bin/env bash

# I want to make sure that the directory is clean and has nothing left over from
# previous deployments. The servers auto scale so the directory may or may not
# exist.
if [ -d /home/temp ]; then
    rm -rf /home/temp
fi
mkdir -vp /home/temp
cd /opt/codedeploy-agent/deployment-root/deployment-instructions
sudo rm -rf *cleanup
