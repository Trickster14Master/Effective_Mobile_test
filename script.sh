#!/bin/bash

peremen=$(curl -L --max-time 10 https://test.com/monitoring/test/api)
#peremen=$(curl -L --max-time 20 http://my-seamovar.duckdns.org:5682/login)
date=$(date '+%Y-%m-%d %H:%M:%S')

if [[ -z "$peremen" ]]
then
  echo $date": сервис не работает" >> /var/log/monitoring.log
else echo $date": сервис работает" >> /var/log/monitoring.log
fi
