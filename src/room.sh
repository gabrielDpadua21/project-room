#!/bin/bash

function law 
{
  head -n 50 .man
}

function room
{
  docker compose up -d "$@"
}

function shambles
{
  if (( "$@" < 2 ));then
    docker compose exec -it "$@" bash
  else
    docker compose exec -it "$@"
  fi
}

function cs
{
  docker compose restart "$@"
}

function scan 
{
  if (( "$@" < 2)); then
    docker compose logs -f -t --tail=1 "$@"
  else
    docker compose logs -f -t --tail="$@"
  fi
}

function att 
{
  docker compose stop "$@"
}

function rk
{
  docker compose down "$@"
}

function mes
{
  docker compose ls 
}

function is
{
  docker compose build "@"
}

"$@"
