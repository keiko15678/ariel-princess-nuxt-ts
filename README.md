# nuxt-ts-docker-template

## Stack

- Typescript via 'nuxt-property-decorators'
- NuxtJS
- Sass
- Docker

## CI/CD Supports

- Github Actions (static) https://keiko15678.github.io/nuxt-ts-docker-template/
- Dockerhub https://hub.docker.com/layers/keiko15678/ire/nuxt-ts-docker-template/images/sha256-28b3018be241842bb61bb0300df9f35b2588c296d16f346fff5ae91cb36a3f2c?context=explore
- Heroku via Dockerhub
- Azure via Azure Container Registry & Azure App Service

## Build Setup

```bash
# install dependencies
$ npm install

# serve with hot reload at http://localhost:3000
$ npm run dev

# build for production and launch server
$ npm run build
$ npm run start

# generate static project
$ npm run generate
```

## Containerization Environment Setup

```bash
# download & install Docker (official)
$ ./docker-install.sh

# download & install WSL Linux Subsystem Kernel
$ ./wsl-install.sh
```

## Containerization & Deployment

```bash
# local Docker run with development env
$ npm run docker:local.dev

# local Docker run with production env
$ npm run docker:local.prd

# push to Dockerhub with development env
$ npm run docker:hub.dev

# push to Dockerhub with production env
$ npm run docker:hub.prd

# local Docker build and run test
$ npm run docker:test

# deploy to Heroku
$ npm run heroku
```

For detailed explanation on how things work, check out [Nuxt.js docs](https://nuxtjs.org).
