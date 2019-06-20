#!/bin/bash

git clone https://github.com/deeem/retrobits-api.git src/api
git clone https://github.com/deeem/retrobits-app.git src/app
git clone https://github.com/deeem/retrobits-admin.git src/admin

sudo chmod -R 777 src/api/storage src/api/bootstrap/cache

docker-compose up -d

sudo chmod -R 777 data

sh composer install

cp src/api/.env.example src/api/.env
cp src/app/.env.example src/app/.env
cp src/admin/.env.example src/admin/.env

sh artisan key:generate

sh artisan migrate --seed
