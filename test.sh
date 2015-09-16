#!/bin/bash

docker run -ti --entrypoint=/bin/bash -v /mnt/lun00/coreos00/confd:/etc/confd:rw -P confd 
