#!/bin/bash

/consul-template -config /config.hcl -once -exec "nginx -g 'daemon off;'"