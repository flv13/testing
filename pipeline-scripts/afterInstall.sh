#!/usr/bin/env bash

rsync --delete-before --verbose --archive /home/temp/ /home/ubuntu/app/ > /home/ubuntu/deploy.log
chgrp www-data /home/ubuntu/app
