#!/bin/ash
cd /laravel/sample_laravel
chown -R www-data:www-data .
chmod 777 storage
npm install
npm run dev 
composer update
composer self-update
composer install
php artisan key:generate
