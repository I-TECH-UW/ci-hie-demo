# ci-hie-demo


## How-Tos

### Pre-Requesites 
1. Git: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
2. Git Large File Storage: https://docs.github.com/en/repositories/working-with-files/managing-large-files/installing-git-large-file-storage
3. Docker: https://docs.docker.com/engine/install/

### Startup

```sh
git clone https://github.com/I-TECH-UW/ci-hie-demo.git

git lfs fetch

git lfs checkout

git lfs pull

```
In the file found at "./configs/opencr/config.json" change the
installed flag under app to false to load configs for Opencr  
```
"app": {
    "port": 3000,
    "installed": false
}
```


### Resetting and Clearing OpenCR 
```sh
docker stop opencr opencr-fhir es
docker system prune --volumes
```
## Local setup

Spin up the services

```
docker compose -f docker-compose-local.yml up -d
```
### You should be able to acces the Sigdep (OpenMRS) ,OpenHIM and Hapi-Fhir instances  at the following urls
| Instance  |     URL       | credentials (user : password)|
|---------- |:-------------:|------:                       |
| Sigdep (OpenMRS)   | http://localhost:8080/openmrs  |  admin : Dppeis@pnls_16 |
| OpenHIM   | http://localhost:9000  |  root@openhim.org : openhim |
| OpenCR    | http://localhost:3000/crux  |  root@intrahealth.org  : intrahealth|
| OpenELIS | https://localhost:8443/OpenELIS-Global/ |    admin : adminADMIN!| 

### Restart the Streaming pipeline to work Properly
After spinning up the Sigdep3 , restart the Streaming pipeline to Stream all Changes to the SHR
```
docker restart streaming-pipeline
```


### Possible challenges
Ensure the .db folder at the root has permissions to allow docker to write files

###
Running on gitpod
Change the env var of es to have only 
`      - xpack.security.enabled=false
        - discovery.type=single-node
`
and change the ulimit as 
`
ulimits:
      nofile:
        soft: 65536
        hard: 65536
`    
Follow the blog here: https://www.gitpod.io/blog/local-app to enable localhost on your machine

### Deploying with ansible to remote server
Install ansible on the host machine following steps here https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html    
Ensure the public key is already added to the remote server    
Update the path to your private key on the variable ansible_ssh_private_key_file    
Update the inventory.ini file with the host addresses    
Run the command below in the distribution    
Enter password of the private key when prompted    

```sh
cd deployment
ansible-playbook -i inventory.ini deployment.yml
```
