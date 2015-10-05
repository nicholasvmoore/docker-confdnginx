#!/bin/bash

docker run -ti --rm --entrypoint=/bin/bash -v /mnt/mpzfs01/coreos00/confd:/etc/confd:rw -v /mnt/mpzfs01/coreos00/wordpress/dev:/php:rw -P --name=confd confd
