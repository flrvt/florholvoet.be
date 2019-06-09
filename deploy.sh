#!/bin/sh
USER=root
HOST=server1.crays.ee
DIR=/var/www/vhosts/florholvoet.be/httpdocs/   # might sometimes be empty!

hugo && rsync -avz --delete public/ ${USER}@${HOST}:${DIR}

exit 0