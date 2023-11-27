#!/bin/bash

# Docker configurations

# Useful when the gateway encounters internal server errors, leaving containers in an unspecified state.
function dockerkill() {
  docker rm -f '$(docker ps -aq)'
}

# Delete remaining container in docker.
function dockerclean() {
  docker rm -v '$(docker ps -a -q -f status=exited)'
  docker rmi '$(docker images -f "dangling=true" -q)'
}

alias dm="docker-machine"
alias dmenv='eval "$(docker-machine env dev)"'

