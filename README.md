# laravel-nginx-mysql-example-en
This is an example of how to use docoker-compose to create laravel/nginx/mysql environment.  
Please see [this file](https://github.com/lechatthecat/laravel-nginx-mysql-example-en/blob/master/docker-compose.yml) for more detail.

## How to use
Run this program as follows:
```
$ git clone https://github.com/lechatthecat/laravel-nginx-mysql-example-en.git
$ cd laravel-nginx-mysql-example-en
$ docker compose up -d --build
$ docker compose exec laravel ash
# In the laravel container:
composer self-update
composer create-project --prefer-dist laravel/laravel sample_laravel
cd /laravel/sample_laravel
chown -R www-data:www-data .
chmod 777 storage
npm install
npm run dev 
composer update
composer self-update
composer install
php artisan key:generate
```
And then see http://localhost:8080
You can see laravel is working on docker there.

## Commands
Container Log
```
$ docker logs --tail 50 --follow --timestamps laravel
```
Bash
```
$ docker-compose exec laravel /bin/bash
```
Or use /bin/sh

To check containers' status:
```
$ docker ps -a
```

To stop docker containers:
```
$ docker-compose down 
```

**Don't do the following commands in prod**
To delete docker objects:
```
$ docker system prune --volumes -f
```
To delete everything of docker:
```
$ docker-compose down -v --rmi all --remove-orphans
```

if you really want to delete all of docker data
```
$ docker rm $(docker ps -a -q) -f
$ docker rmi $(docker images -q) -f
$ docker volume rm $(docker volume ls -q)
$ docker system prune --force --volumes --all
```
