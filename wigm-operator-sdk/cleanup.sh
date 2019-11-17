#!/bin/bash

docker-compose kill
docker-compose down
docker volume rm wigmoperatorsdk_wigm-k8s
