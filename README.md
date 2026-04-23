# Modul Praktikum Pemrograman Mobile  
## Dependency Injection (DI) menggunakan GetX CLI dan GetX Pattern

## 📌 Deskripsi

Project ini merupakan modul praktikum mahasiswa untuk mata kuliah **Pemrograman Mobile** dengan topik **Dependency Injection (DI)** menggunakan **GetX CLI** dan **GetX Pattern** pada framework Flutter.

Mahasiswa akan mempelajari bagaimana cara mengelola dependency seperti controller, service, dan route menggunakan package GetX agar kode lebih rapi, scalable, dan mudah dikelola.

---

## 🎯 Tujuan Pembelajaran

Setelah menyelesaikan praktikum ini, mahasiswa diharapkan mampu:

- Memahami konsep Dependency Injection (DI)
- Menggunakan GetX CLI untuk membuat project Flutter
- Menggunakan GetX Pattern (Binding, Controller, View)
- Mengelola controller dengan Dependency Injection
- Membuat aplikasi Flutter terstruktur

---

## 🛠️ Teknologi yang Digunakan

- Flutter
- Dart
- GetX
- Get CLI
- Android Studio / VS Code

---

## 📂 Struktur Folder

```bash
lib/
└── app/
    ├── data/
    ├── modules/
    │   └── home/
    │       ├── bindings/
    │       ├── controllers/
    │       └── views/
    ├── routes/
    └── widgets/
````

---

## ⚙️ Instalasi

### 1. Clone Repository

```bash
git clone https://github.com/username/nama-project.git
cd nama-project
```

### 2. Install Dependency

```bash
flutter pub get
```

### 3. Install Get CLI

```bash
dart pub global activate get_cli
```

### 4. Jalankan Project

```bash
flutter run
```

---

## 🚀 Membuat Project dengan Get CLI

```bash
get create project mahasiswa_di
```

Pilih:

```text
Flutter
GetX Pattern
```

---

## 📘 Materi Praktikum

### Dependency Injection dengan GetX

Contoh inject controller:

```dart
Get.put(HomeController());
```

atau

```dart
Get.lazyPut<HomeController>(() => HomeController());
```

---

## 📌 Jenis Dependency Injection di GetX

| Method         | Fungsi                                 |
| -------------- | -------------------------------------- |
| Get.put()      | Membuat object langsung                |
| Get.lazyPut()  | Membuat object saat dibutuhkan         |
| Get.putAsync() | Untuk dependency async                 |
| Get.create()   | Membuat object baru setiap pemanggilan |

---

## 🧪 Contoh Controller

```dart
class HomeController extends GetxController {
  var counter = 0.obs;

  void tambah() {
    counter++;
  }
}
```

---

## 🧩 Contoh Binding

```dart
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
```

---

## 🖥️ Contoh View

```dart
Obx(() => Text("Counter: ${controller.counter.value}"))
```

---

## 📚 Tugas Mahasiswa

### Tugas 1

Buat halaman Profile berisi:

* Nama
* NIM
* Prodi
* Tombol Ubah Nama

Gunakan Binding dan Controller.

### Tugas 2

Buat aplikasi Counter 2 halaman:

* Home
* Detail

Gunakan controller yang sama melalui DI.


## ✅ Output Praktikum

* Menampilkan data mahasiswa
* Counter berjalan
* Dependency Injection aktif
* Struktur project rapi

## 📖 Keuntungan Menggunakan DI

* Code lebih bersih
* Mudah maintenance
* Reusable controller
* Cocok untuk project besar
* Mudah testing

## 👨‍💻 Author

Muhammad Iqbal Saputra
D4 Teknik Informatika
Politeknik Harapan Bersama
