#!/bin/bash
###########################################
#
# Simple Shell script to clean/remove  opencr-fhir and  opencr containers
#
# The script will 
#  - first stop the opencr-fhir and opencr containers 
#  - remove opencr-fhir containers
#  - remove opencr
#  - remove opencr images
#

# stop opencr and opencr-fhir container
echo '####################################################'
echo 'Stopping running opencr and opencr-fhir containers (if available)...'
echo '####################################################'
docker stop  opencr opencr-fhir

# remove  opencr-fhir stopped containers
echo '####################################################'
echo 'Removing opencr-fhir container ..'
echo '####################################################'
docker rm opencr-fhir

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
echo '##################################################'
echo 'Revoming  opencr container volumes (if any)'
echo '####################################################'
docker volume rm --force opencr
