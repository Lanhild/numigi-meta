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

fpm -s empty -t $TYPE -n $NAME\
	-a all\
	-v $1\
	--description "Numigi metapackage used to install a group of packages present in the main repository"\
	--license $LICENSE\
	--maintainer $MAINTAINER\
	--url $URL\
	-d grub-theme-numigi

