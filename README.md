# Alpine Beef XSS Shell
## Introduction
This image contains a [Beef XSS](https://beefproject.com/) shell on the Hacking-Lab Alpine base image.

## Login
The credentials can be configured using the `BEEF_USERNAME` and `BEEF_PASSWORD` environment variables. See `docker-compose.yml` files for more information.

## Build & Test
1. `bash build.sh` to build the image
2. `docker-compse -f docker-compose-local.yml up` to start the container
3. Go to [Beef XSS shell](http://localhost:3000/ui/panel) and log in with `compass` / `hacker`


