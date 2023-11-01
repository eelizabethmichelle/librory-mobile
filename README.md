# Perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter
## Stateless Widget
* Tidak memiliki keadaan internal yang berubah setelah dibuat sehingga nilai-nilai propertinya tidak bisa diubah
* Lebih cocok untuk komponen yang statis dan tidak perlu berubah selama waktu eksekusi karena performa lebih efisien dibandingkan ```stateful widget``` karena tidak perlu melacak perubahan keadaan/nilai dari properti

## Stateful Widget
* Memiliki keadaan internal yang berubah setelah dibuat selama waktu eksekusi aplikasi
* Lebih cocok untuk komponen yang dinamis dan interaktif karena ketika keadaan berubah, ```stateful widget``` akan kembali load dirinya sendiri dengan nilai yang telah diperbarui

# Widget yang digunakan untuk menyelesaikan Tugas 7
1. ```MyHomePage```: membangun tampilan halaman utama aplikasi
2. ```Scaffold```: kerangka dasar untuk halaman dengan AppBar, body, dan lain-lain
3. ```AppBar```: menampilkan bar atas halaman dengan judul
4. ```SingleChildScrollView```: memungkinkan konten untuk discroll
5. ```Padding```: memberikan jarak antara elemen dalam konten
6. ```Column```: mengatur elemen-elemen secara vertikal
7. ```Text```: menampilkan teks
8. ```GridView.count```: menampilkan grid dengan jumlah kolom yang tetap
9. ```LibroryItem```: kelas untuk merepresentasikan item dalam grid
10. ```LibroryCard```: widget untuk menampilkan item sebagai card dalam grid 
11. ```Material```: mengatur tampilan bahan kartu
12. ```InkWell```: membuat area responsif terhadap sentuhan
13. ```Icon```: menampilkan ikon
14. ```SnackBar```: menampilkan pesan ketika suatu item diklik
15. ```MyApp```: widget utama untuk memulai aplikasi
16. ```MaterialApp```: mengonfigurasi dan mengatur tema aplikasi serta menentukan halaman awal

# Cara mengimplementasi checklist
## Tugas 7

### 1. Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya
Untuk membuah sebuah program Flutter baru dengan tema inventory, pertama-tama saya membuat folder bernama ```librory```. Setelah itu, saya menjalankan perintah ```flutter create librory``` dan menunggu sampai pembuatan seluruh file pada projek selesai dibuat. Setelah itu, saya menjalankan perintah ```cd librory``` untuk masuk ke dalam direktori projek yang telah dibuat oleh Flutter. 

Setelah itu saya membuat file bernama ```menu.dart``` pada subdirektori ```lib``` pada direktori ```librory```. Setelah itu saya menambahkan kode ```import 'package:flutter/material.dart';``` pada file ```menu.dart```. Setelah itu saya menyalin dan menghapus kode dari baris ke-39 sampai akhir pada file ```main.dart``` dan memasukkannya pada file ```menu.dart```. Untuk menghindari error, saya kemudian menambahkan kode ```import 'package:librory/menu.dart';``` pada bagian atas file ```main.dart```.

Setelah itu, pada file ```main.dart``` saya menghapus kode ```MyHomePage(title: 'Flutter Demo Home Page')``` menjadi ```MyHomePage()```. Setelah itu, pada file ```menu.dart``` saya juga mengubah sifat ```StatefulWidget``` pada class MyHomePage menjadi ```StatelessWidget```. Saya juga mengubah kode ```({super.key, required this.title})``` menjadi kode ```({Key? key}) : super(key: key);```. Selain itu, saya menghapus baris kode yang memuat ```final String title;``` sampai baris terakhir pada class ```MyHomePage()``` dan class ```MyHomePageState``` serta menambahkan ```Widget build``` dengan kode sebagai berikut:
```
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PBP Inventory',
        ),
      ),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'Librory', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((LibroryItem item) {
                  // Iterasi untuk setiap item
                  return LibroryCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
```

### 2. Membuat tiga tombol sederhana dengan ikon dan teks untuk: melihat daftar item (```Lihat Item```), menambah item (```Tambah Item```), dam logout (```Logout```)
Untuk menambahkan teks dan card, saya mendefinisikan tipe pada list dengan menambahkan potongan kode sebagai berikut:
```
class LibroryItem {
  final String name;
  final IconData icon;
  final Color color;

  LibroryItem(this.name, this.icon, this.color);
}
```

Setelah itu, di bawah kode ```MyHomePage({Key? key}) : super(key: key);``` saya menambahkan potongan kode sebagai berikut:
```
final List<LibroryItem> items = [
    LibroryItem("Lihat Item", Icons.checklist, Colors.indigo),
    LibroryItem("Tambah Item", Icons.add_shopping_cart, Colors.green),
    LibroryItem("Logout", Icons.logout, Colors.red),
  ];
```

### 3. Memunculkan ```Snackbar```:
Untuk menampilkan card, dan memnculkan ```Snackbar``` saya menambahkan potongan kode sebagai berikut:
```
class LibroryCard extends StatelessWidget {
  final LibroryItem item;

  const LibroryCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```
Potongan kode ```content: Text("Kamu telah menekan tombol ${item.name}!")``` pada potongan kode:
```
onTap: () {
    // Memunculkan SnackBar ketika diklik
    ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(
        content: Text("Kamu telah menekan tombol ${item.name}!")));
}
```
digunakan untuk menampilkan tulisan sesuai dengan item.name yang ditekan.