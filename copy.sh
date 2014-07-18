#!/bin/bash

##########################################################################################################
##                                                                                                      ##
##  AUTHOR: James Aindow                                                                                ##
##  A script to allow for copying back of data from production servers to staging servers               ##
##  To be executed on remote server acting as a proxy between production and UAT / Staging / local      ##
##  Requires SSH keys on the proxy machine                                                              ##
##                                                                                                      ##
##########################################################################################################

#!/bin/bash
echo "Reading config...." >&2
. config/config.cfg

## Confirm source destination
echo "WARNING: THIS HAS THE POTENTIAL TO WIPE LIVE DATA, PLEASE ENSURE TARGET AND DESTINATION VALUES ARE CORRECT" >&2
echo "This will copy from $production_alias to $staging_alias" >&2

## Probably worth putting in a check for production list here ##
read -p "Continue (y/n)?" -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo "exiting";
    exit 1
fi

#### COMPLETE #####
### Add maintenance flag to staging server for duration of import
echo "Accessing destination server...";
echo "touch $staging_path$flag;" | ssh $staging_alias /bin/bash
echo "Maintenance active";
echo "rm $staging_path$flag;" | ssh $staging_alias /bin/bash
echo "Maintenance inactive";

#### IN PROGRESS #####
## Copy live export from source to destination server
echo "Copying SQL export from $dump_location_host:$production_path_to_dump to $staging_alias:$staging_home_dir";
scp -C $dump_location_host:$production_path_to_dump $staging_alias:$staging_home_dir

### Check is compressed
#### if so decompress ##

## Run MySQL import ##

## Run secondary import (sanistise with options)

## Run last import to set base URL

## Remove maintenance flag

