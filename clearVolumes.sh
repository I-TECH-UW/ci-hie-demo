#!/bin/bash
###########################################
#
# Simple Shell script to clean/remove  opencr containers
#
# The script will 
#  - first stop the opencr containers 
#  - remove opencr containers
#  - remove opencr images
#  - remove opencr volumes
#

# stop opencr container
echo '####################################################'
echo 'Stopping running opencr containers (if available)...'
echo '####################################################'
docker stop  opencr 

# remove  opencr stopped containers
echo '####################################################'
echo 'Removing opencr container ..'
echo '####################################################'
docker rm opencr 


# remove  opencr images
echo '####################################################'
echo 'Removing  opencr images ...'
echo '####################################################'
docker rmi intrahealth/opencr:latest

# remove  opencr stray volumes if any
echo '####################################################'
echo 'Revoming  opencr container volumes (if any)'
echo '####################################################'
docker volume rm opencr 
