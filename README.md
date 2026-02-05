# nginx-unprivileged-dockerfile

This project is using ```docker.io/library/nginx``` to build a similar image like ```docker.io/nginxinc/nginx-unprivileged```

```
docker build --rm -f Dockerfile -t quay.io/roccqqck/nginx/library/nginx-unprivileged:1.28-alpine --progress=plain .
docker push quay.io/roccqqck/nginx/library/nginx-unprivileged:1.28-alpine
```
