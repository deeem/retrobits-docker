# Retrobits docker dev container

## How to install

### Check your ports
Docker will expose some services ports. You can change them in *docker-compose.yml*. Here they are:
* `8081` - adminer sql client
* `5432` - postgresql db
* `8080` - retrobits api
* `3001` - retrobits app
* `3002` - retrobits admin

### Installation
* clone environment `git clone https://github.com/deeem/retrobits-docker.git .` and `cd retrobits` in to it
* build environment `sh build.sh`

## Usage

### Endpoints
* **api:** `http://127.0.0.1:8080`
* **app:** `http://127.0.0.1:3001`
* **admin:** `http://127.0.0.1:3002`

### Tools
* **adminer:** `http://127.0.0.1:8081`
* **artisan:** `sh artisan` equals `php artisan`. For example, `sh artisan migrate`
* **tinker:** `sh tinker` runs tinker
* **composer:** `sh composer` runs composer
* **logs** `docker-compose logs --follow`


### Managing containers
* stop all containers `docker-composer stop`
* down all containers `docker-composer down`
* start all containers `docker-composer up -d`
