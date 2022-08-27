# ci-hie-demo


## How-Tos

### Resetting and Clearing OpenCR 
```sh
docker stop opencr opencr-fhir es
docker system prune --volumes
docker compose up -d 
```