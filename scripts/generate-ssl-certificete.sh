#!/bin/bash

openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout ../roles/install-jenkins/templates/nginx.key -out ../roles/install-jenkins/templates/nginx.crt \
-subj "/C=UA/ST=Vinnitsa/L=Vinnitsa/O=Global Security/OU=IT Dep/CN=jenkins.dom"
