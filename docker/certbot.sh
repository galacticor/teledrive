#!/bin/sh

# Do argument checks
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 {domain} {email}"
    echo "Example: $0 your-domain.com your-email@test.com"
    exit 1
fi

DOMAIN=$1
EMAIL=$2

sudo certbot certonly --standalone --email $EMAIL --agree-tos --no-eff-email -d $DOMAIN --config-dir $PWD/letsencrypt/ --work-dir $PWD/letsencrypt/
