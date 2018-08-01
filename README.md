# tw-data

Data layer based on [Prisma](https://github.com/prismagraphql/prisma).

[![Build Status](https://img.shields.io/circleci/project/github/adriancarriger/tw-data/develop.svg?maxAge=60)](https://circleci.com/gh/adriancarriger/tw-data)
[![Dependency Status](https://img.shields.io/david/adriancarriger/tw-data/develop.svg?maxAge=60)](https://david-dm.org/adriancarriger/tw-data)
[![devDependency Status](https://img.shields.io/david/dev/adriancarriger/tw-data/develop.svg?maxAge=60)](https://david-dm.org/adriancarriger/tw-data?type=dev)

## Microservices

- [tw-base](https://github.com/adriancarriger/tw-base)
- [tw-data](https://github.com/adriancarriger/tw-data)
- [tw-server](https://github.com/adriancarriger/tw-server)
- [tw-app](https://github.com/adriancarriger/tw-app)

## Usage

- `docker-compose exec data prisma token`
- Go to [http://localhost:4466](http://localhost:4466)
- Click `HTTP HEADERS` and add your token like this:

```json
{
  "Authorization": "Bearer <your-token-here>"
}
```
