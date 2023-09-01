1. Start the server with the desired docker-compose file    
2. Generate the relevant images using the command    
docker save -o {file name}.tar {image name}:{image version}    
e.g docker save -o openmrs.tar partnersinhealth/openmrs-server:latest    
3. Download and add the necessary docker installation packages    
see https://download.docker.com/linux/ubuntu/dists/jammy/pool/stable/arm64/    
4. Download git lfs     
see https://packagecloud.io/github/git-lfs/packages/ubuntu/jammy/git-lfs_3.4.0_i386.deb?distro_version_id=237    
5. Zip the sigdep distro    
6. Zip everything including the images, installation packages    
7. Use the install script on the repo [https://github.com/I-TECH-UW/deploymentscript]
