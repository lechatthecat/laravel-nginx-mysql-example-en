# laravel-nginx-mysql-example-en
This is an example of how to use docoker-compose to create laravel/nginx/mysql environment.  
Please see [this file](https://github.com/lechatthecat/laravel-nginx-mysql-example-en/blob/master/docker-compose.yml) for more detail.

## How to use
Run this program as follows:
```
$ git clone https://github.com/lechatthecat/laravel-nginx-mysql-example-en.git
$ cd laravel-nginx-mysql-example
$ docker-compose up -d --build
$ docker-compose exec laravel ash
# In the laravel container:
$ sh -x ../laravel_build.sh
```
And then see http://localhost:10080
You can see laravel is working on docker there.
