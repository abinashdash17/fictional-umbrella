( \
  ls -1tr /var/log/nginx/access.log.*.gz | xargs -r zcat; \
  [ -f /var/log/nginx/access.log.1 ] && cat /var/log/nginx/access.log.1; \
  tail -n +1 -F /var/log/nginx/access.log \
) | goaccess --log-format=COMBINED
