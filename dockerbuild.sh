#!/usr/bin/env bash

docker buildx build --platform linux/amd64 -t hipsthomasdocker:test .
