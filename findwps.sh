#!/bin/sh

HOMEDIR="/home"

if [ "$1" != "" ]; then
	HOMEDIR=$1
fi 

ls $HOMEDIR|grep -v backup|perl -e 'while(<>){chomp; @x=`find $HOMEDIR/$_|grep wp-config.php`;foreach(@x){chomp; /(.*)\/wp-config.php/;print "$1\n";}}'
