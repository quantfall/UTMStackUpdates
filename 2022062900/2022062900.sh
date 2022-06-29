#!/bin/bash

docker pull utmstack.azurecr.io/autoheal:latest

docker run -d --name autoheal --restart=always -e AUTOHEAL_CONTAINER_LABEL=all -v /var/run/docker.sock:/var/run/docker.sock utmstack.azurecr.io/autoheal:latest
