# 📱 Aplikasi Biodata Siswa - Flutter & PHP Backend

[![Flutter](https://img.shields.io/badge/Framework-Flutter-02569B?logo=flutter&logoColor=white)](https://flutter.dev)
[![PHP](https://img.shields.io/badge/Backend-PHP-777BB4?logo=php&logoColor=white)](https://www.php.net)
[![MySQL](https://img.shields.io/badge/Database-MySQL-4479A1?logo=mysql&logoColor=white)](https://www.mysql.com)

Aplikasi manajemen biodata siswa berbasis mobile yang efisien. Menggunakan **Flutter** untuk antarmuka pengguna yang responsif dan **PHP (PDO)** sebagai REST API untuk mengelola database **MySQL**.

---

## 📸 Tampilan Aplikasi

| Dashboard Utama | Detail Siswa | Form Input |
| :---: | :---: | :---: |
| <img width="300" alt="dashboard" src="https://github.com/user-attachments/assets/989df0de-a27b-403d-b7d8-7d50931c392a" /> | <img width="300" alt="detail" src="https://github.com/user-attachments/assets/d7cc1990-6014-452e-9a2a-9f33ed184cb0" /> | <img width="300" alt="form" src="https://github.com/user-attachments/assets/903fcf37-aa26-4485-9e41-b472f549a260" /> |

---

## 🛠️ Fitur Utama
* **✅ Full CRUD Operations**: Menambah, melihat, mengubah, dan menghapus data siswa.
* **🔍 Detail View**: Menampilkan informasi lengkap setiap siswa secara spesifik.
* **🌐 REST API Integration**: Koneksi data real-time antara aplikasi mobile dan server lokal.
* **📱 Clean UI/UX**: Tampilan minimalis dan navigasi yang intuitif antar halaman.

---

## 📂 Struktur Proyek
```text
.
├── backend_php/          # Script PHP & Konfigurasi API
│   ├── database.sql      # Skema database MySQL
│   └── *.php             # Endpoint API (PDO)
├── lib/
│   ├── models/           # Logika data & konfigurasi Host API
│   ├── views/            # Halaman Antarmuka (Home, Create, Edit, Detail)
│   └── main.dart         # Titik masuk utama aplikasi
└── pubspec.yaml          # Dependensi Proyek Flutter
