#!/bin/bash
docker run --rm -v "${PWD}":/config -it ghcr.io/esphome/esphome compile $1