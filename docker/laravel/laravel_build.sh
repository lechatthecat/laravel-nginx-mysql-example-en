#!/bin/ash
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

# if you use "command" to execute this script in docker-compose.yml, 
# you need the following at the end of this file:
# /bin/ash
# Otherwise, as sson as the script finishes executing, the container terminates