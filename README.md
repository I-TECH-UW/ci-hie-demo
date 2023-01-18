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

docker compose up -d
```

### Resetting and Clearing OpenCR 
```sh
docker stop opencr opencr-fhir es
docker system prune --volumes
docker compose up -d 
```