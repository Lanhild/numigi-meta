#!/bin/bash
# Script used to generate packages using the fpm utility

#Variables assignation
TYPE="deb"
NAME="numigi-meta"

fpm -s empty -t $TYPE -n $NAME\
	-a all\
	-v $1\
	-d grub-theme-numigi

