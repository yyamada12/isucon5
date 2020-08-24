#!/bin/sh

set -eux

SCRIPT_DIR=$(dirname "$0")

cd $SCRIPT_DIR

date -R
echo "Started deploying."

# rotate logs
./rotate_log.sh /var/log/nginx/access.log
./rotate_log.sh /var/log/mysql/slow.log
./rotate_log.sh ~/pprof/pprof.png


# build go app
cd ..
go build -o app

# restart services
sudo systemctl restart mysql
sudo systemctl restart isuxi.go
sudo systemctl restart nginx

date -R
echo "Finished deploying."
