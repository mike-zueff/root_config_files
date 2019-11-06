#!/usr/bin/env bash
chmod +x /var/www/localhost/htdocs/nextcloud/occ
chown -hR nginx:nginx /var/www/localhost/htdocs/nextcloud
chown root:root /var/www/localhost/htdocs/nextcloud/.webapp*
