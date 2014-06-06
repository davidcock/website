#!/bin/sh

ROOTDIR="$(dirname $0)/../"
HOSTNAME=login.cse.unsw.edu.au
HOSTDIR=public_html/

rsync -avz --exclude-from=exclude $ROOTDIR $HOSTNAME:$HOSTDIR
