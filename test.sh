#!/bin/bash

docker run -ti --rm --entrypoint=/bin/bash -v /mnt/lun00/coreos00/confd:/etc/confd:rw -P --name=confd confd
