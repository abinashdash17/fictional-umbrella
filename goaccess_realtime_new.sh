#!/bin/sh
(zcat -f /var/log/nginx/access.log.*.gz /var/log/nginx/access.log.1 && tail -f /var/log/nginx/access.log) | goaccess - --log-format=COMBINED
# aliases
# alias show_access_logs='sudo goaccess /var/log/nginx/access.log --log-format=COMBINED'
# alias show_rt_access_logs='(zcat -f /var/log/nginx/access.log.*.gz /var/log/nginx/access.log.1 && tail -f /var/log/nginx/access.log) | goaccess - --log-format=COMBINED'
