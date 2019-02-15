#!/bin/sh
set -o pipefail



if [ -z "${SCHEDULEFREQ}" ]; then
  echo "env SCHEDULEFREQ must contain value in cron syntax"
  exit 1
fi

if [ -z "${SCHEDULECMD}" ]; then
  echo "env SCHEDULECMD must contain command to be executed"
  exit 1
fi


echo "${SCHEDULEFREQ}  /root/script.sh " >> /etc/crontabs/root
echo "" >> /etc/crontabs/root
echo "${SCHEDULECMD}" >> /root/script.sh
chmod a+x /root/script.sh

crond -l 2 -f
