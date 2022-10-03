#!/bin/bash
# Script used to generate packages using the fpm utility
# The stdin $1 argument is the version number, passed as './gen.sh n.x', n.x being the version number.

#Variables assignation
#Automatically export all variables
set -a
source .env
set +a

TYPE="deb"
NAME="numigi-meta"
URL="https://github.com/Lanhild/numigi-meta"

fpm -s empty -t $TYPE -p $NAME-$1-any.deb \
	--name $NAME \
	--license $LICENSE \
	--version $1 \
	--architecture all \
	--depends grub-theme-numigi \
	--description "Numigi metapackage used to install a group of packages present in the main repository"\
	--url "$URL" \
	--maintainer "$MAINTAINER"
