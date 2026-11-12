# Sistem Informasi Penjualan Sissy Cookies

Proyek PPSI 4KA33 - Kelompok 4 (Universitas Gunadarma).
Stack: PHP 8.2+, Laravel 11, MySQL 8, Tailwind CSS (Breeze/Blade).

## Instalasi (anggota tim)
1. `git clone <url-repo> && cd sissy-cookies`
2. `composer install`
3. `cp .env.example .env` lalu isi `DB_PASSWORD` sesuai MySQL lokal
4. Buat database `sissy_cookies`
5. `php artisan key:generate`
6. `php artisan migrate`
7. `npm install && npm run build`
8. `php artisan serve` -> buka http://localhost:8000

Alternatif tanpa instalasi lokal: buka repo di GitHub -> Code -> Codespaces.

## Alur kerja Git
- `main`: versi stabil (hanya lewat Pull Request dari `develop`)
- `develop`: gabungan pekerjaan tim
- `feature/<nama-fitur>`: satu branch per fitur, contoh `feature/auth`, `feature/catalog`, `feature/order`
- Format commit: `feat:`, `fix:`, `docs:`, `chore:`
- Jangan commit `.env`

## Struktur modul (sesuai SDD)
| FR | Modul |
|----|-------|
| FR-01 | Login & Hak Akses |
| FR-02 | Informasi Produk & Stok |
| FR-03 | Pemesanan & Penjadwalan |
| FR-04 | Pengelolaan Produk, Kuota & Jadwal Produksi |
| FR-05 | Pengelolaan & Konfirmasi Pesanan |

## Anggota
Alex Sabam Doloksaribu (Lead Programmer), Kamil Kafabillah, Jesika Nakhe, Meldi Auren Azahra, Rania Mahira Insani, Restika Mahaliany Putri, Shazi Arsyanawra Sulhannizar
