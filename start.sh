#!/bin/bash
for d in clm*; do
  echo ${d}
  cd ${d}
  if [ -e "docker-compose.yml" ]; then
        docker-compose up --build -d
  fi
  cd ..
done