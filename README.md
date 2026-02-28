# 📱 Aplikasi Biodata Siswa - Flutter & PHP

Tugas aplikasi biodata siswa menggunakan **Flutter** sebagai Frontend dan **PHP (PDO)** sebagai Backend API dengan database **MySQL**.

## 📸 Tampilan Aplikasi
<img width="1365" height="629" alt="image" src="https://github.com/user-attachments/assets/faa05b98-68e4-4f21-92eb-a33bf1a8d9fa" />
<img width="1366" height="627" alt="image" src="https://github.com/user-attachments/assets/fd6e9b1a-67bd-4e8b-a37b-b7823b69d5ea" />
<img width="1366" height="631" alt="image" src="https://github.com/user-attachments/assets/89e7bbe9-22f1-4716-94a4-8f1d48954213" />
<img width="1366" height="621" alt="image" src="https://github.com/user-attachments/assets/c34b99e4-a65c-4c93-a9ff-041e7c33c4a6" />



## 🛠️ Fitur
* Menampilkan daftar siswa dari database
* Menambah data siswa baru
* Mengubah data siswa yang sudah ada
* Navigasi antar halaman (Home, Create, Edit, Detail)

## 🚀 Cara Instalasi

### 1. Backend (XAMPP)
* Pindahkan folder `backend_php` ke folder `htdocs`
* Import database menggunakan file `database.sql`:
    ```sql
    CREATE TABLE `siswa` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `nis` varchar(16) NOT NULL,
      `nama` varchar(50) NOT NULL,
      `tplahir` varchar(50) NOT NULL,
      `tglahir` date NOT NULL,
      `kelamin` varchar(15) NOT NULL,
      `agama` varchar(15) NOT NULL,
      `alamat` varchar(200) NOT NULL,
      PRIMARY KEY (`id`)
    );
    ```

### 2. Frontend (Flutter)
* Pastikan koneksi internet stabil.
* Ubah IP Address pada file `lib/models/api.dart` sesuaikan dengan IP laptop kamu:
    ```dart
    // Contoh: 10.2.16.29
    static String host = "10.2.16.29"; 
    ```
* Jalankan perintah:
    ```bash
    flutter pub get
    flutter run
    ```

## 📂 Struktur Proyek
* `lib/models/`: Model data dan konfigurasi API
* `lib/views/`: Halaman UI (Home, Create, Edit, Detail)
* `backend_php/`: Script PHP untuk akses database

---
**Dibuat oleh:** MUHAMMAD REVAN
