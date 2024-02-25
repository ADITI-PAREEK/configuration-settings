#!/bin/bash
# configuration file exists
config_file=/home/aditi/con.sh

# (-f) flag checks if it is a regular file
if [ ! -f "$config_file" ];
then
	echo "$config_file not found! "
	exit 1
else
	echo "$config_file found! "
fi

# read setting from the file
source "$config_file"

# use the required settings during execution
echo " DB_HOST:$DB_HOST"
echo " DB_USER:$DB_USER"

# required setting defined
if [  "$DB_HOST" ] || [  "$DB_USER" ];
then
     echo " Nothing is missing!" 
     exit 1
else 
	echo " required settings are missing! "
fi

