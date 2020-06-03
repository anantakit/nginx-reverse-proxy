#!/bin/bash
echo 'Enter old domain name: '

read olddomain

echo 'Enter your new domain name: ' 

read newdomain

echo "now domain is $newdomain"

sed -i '' "s/$olddomain/$newdomain/g" init-letsencrypt.sh

sed -i '' "s/$olddomain/$newdomain/g" nginx/website-1.conf
