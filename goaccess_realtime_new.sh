#!/bin/sh
(zcat -f /var/log/nginx/access.log.*.gz /var/log/nginx/access.log.1 && tail -f /var/log/nginx/access.log) | goaccess - --log-format=COMBINED
