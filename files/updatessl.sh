#!/bin/bash
/srv/getssl/getssl -a

cd /root/.getssl
for domain in `find * -maxdepth 0 -type  d`
do
  echo $domain
  cat $domain/$domain.crt > /etc/nginx/ssl2/$domain.pem
  cat $domain/chain.crt >> /etc/nginx/ssl2/$domain.pem
  cat $domain/$domain.key > /etc/nginx/ssl2/$domain.key
done

service nginx reload
