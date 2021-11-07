# catreact
- [https://github.com/2cld/catreact](https://github.com/2cld/catreact)

A simple react app generated to test docker k8s workflow.
```
npx create-react-app catreact
```

## Setup docker dev workflow

- Create Dockerfile.dev for dev workflow
- Use docker volumes to use image node_modules
- Use docker volumes to map react app source files
- Docker Build
```
docker build -f Dockerfile.dev .
docker images                   
REPOSITORY   TAG       IMAGE ID       CREATED          SIZE
<none>       <none>    004c7043b085   45 seconds ago   504MB
docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app 004c7043b085
```
- docker-compose.yml with volume maps and test for dev
```
docker-compose up --build
```
- Production build Dockerfile
```
docker build .
```

### Cleanup
- docker ps
- docker images
- docker system prune -a
- [Error0308010cdigital-envelope](https://stackoverflow.com/questions/69692842/error0308010cdigital-envelope-routinesunsupported)
```
"start": "react-scripts --openssl-legacy-provider start"
```