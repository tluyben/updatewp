#!/bin/sh

cd $@
wp core update
wp plugin update-all
wp theme update-all
