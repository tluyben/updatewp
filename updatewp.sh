#!/bin/sh

cd $@
wp core update
wp core update-db
wp plugin update-all
wp theme update-all
