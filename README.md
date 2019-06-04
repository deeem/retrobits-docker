# Retrobits docker dev container

## Installation

* clone environment `git clone git@bitbucket.org:hotelbonanza/retrobits-docker.git .` and `cd retrobits` in to it
* clone api project `git clone git@bitbucket.org:hotelbonanza/retrobits-api.git src/api`
* clone app project `git clone git@bitbucket.org:hotelbonanza/retrobits-app.git src/app`
* change permissions `sudo chmod -R 777 src/api/storage src/api/bootstrap/cache`
* running up environment `docker-compose up -d`
* install composer packages `sh composer install`
* create .env file `cp src/api/.env.example src/api/.env`
* generate key `sh artisan key:generate`
* run migrations and seed tables `sh artisan migrate --seed`
* change permissions `sudo chmod -R 777 data`

## Usage

### Endpoints
* **api:** `http://127.0.0.1:8080`
* **app:** `http://127.0.0.1:3001`

### Tools
* **adminer:** `http://127.0.0.1:8081`
* **artisan:** `sh artisan` equals `php artisan`. For example, `sh artisan migrate`
* **tinker:** `sh tinker` runs tinker
* **composer:** `sh composer` runs composer
* **logs** `docker-compose logs --follow`