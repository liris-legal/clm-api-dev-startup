#!/bin/bash

if [ -d "clm-api-user-management" ]; then
  cd clm-api-user-management
  if [ -e "dev_db.dump" ]; then
    echo "clm-api-user-management DB リストア中"
    psql -h localhost -p 54321 -U postgres dev_db < dev_db.dump
  fi;
  cd ..
fi;

if [ -d "clm-api-contract-management" ]; then
  cd clm-api-contract-management
  if [ -e "dev_db.dump" ]; then
    echo "clm-api-contract-management DB リストア中"
    psql -h localhost -p 54322 -U postgres dev_db < dev_db.dump
  fi;
  cd ..
fi;

if [ -d "clm-api-signflow-management" ]; then
  cd clm-api-signflow-management
  if [ -e "dev_db.dump" ]; then
    echo "clm-api-signflow-management DB リストア中"
    psql -h localhost -p 54324 -U postgres dev_db < dev_db.dump
  fi;
  cd ..
fi;

echo "リストア完了"