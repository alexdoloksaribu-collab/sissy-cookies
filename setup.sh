#!/usr/bin/env bash
# DRAFT - dijalankan SATU orang saja (Lead Programmer) untuk membuat project awal.
# Syarat: PHP 8.2+, Composer, Node.js, Git sudah terpasang.
set -e

REPO_URL="https://github.com/<username>/sissy-cookies.git"   # ganti dengan URL repo GitHub

composer create-project laravel/laravel:^11.0 sissy-cookies
cd sissy-cookies

# Autentikasi (FR-01) + Tailwind
composer require laravel/breeze --dev
php artisan breeze:install blade
npm install && npm run build

# Konfigurasi dasar
sed -i 's/^APP_NAME=.*/APP_NAME="Sissy Cookies"/' .env
sed -i 's/^DB_CONNECTION=.*/DB_CONNECTION=mysql/' .env
sed -i 's/^# DB_HOST=.*/DB_HOST=127.0.0.1/' .env
sed -i 's/^# DB_PORT=.*/DB_PORT=3306/' .env
sed -i 's/^# DB_DATABASE=.*/DB_DATABASE=sissy_cookies/' .env
sed -i 's/^# DB_USERNAME=.*/DB_USERNAME=root/' .env
sed -i 's/^# DB_PASSWORD=.*/DB_PASSWORD=/' .env
sed -i 's/^SESSION_LIFETIME=.*/SESSION_LIFETIME=60/' .env   # NFR-02
cp .env .env.example
sed -i 's/^APP_KEY=.*/APP_KEY=/' .env.example

# Git
git init
git add .
git commit -m "chore: initial Laravel 11 setup"
git branch -M main
git remote add origin "$REPO_URL"
git push -u origin main
git checkout -b develop && git push -u origin develop
