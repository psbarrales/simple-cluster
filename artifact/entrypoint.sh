#!/bin/bash

/consul-template -config /config.hcl -exec "nginx -g 'daemon off;'"