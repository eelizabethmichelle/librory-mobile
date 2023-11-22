###### Nama aplikasi:
# 📖 librory 📚
###### Nama: Michelle Elizabeth Amanda Hutasoit
###### Kelas: PBP C

## Tugas 7
### Perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter
#### Stateless Widget
* Tidak memiliki keadaan internal yang berubah setelah dibuat sehingga nilai-nilai propertinya tidak bisa diubah
* Lebih cocok untuk komponen yang statis dan tidak perlu berubah selama waktu eksekusi karena performa lebih efisien dibandingkan ```stateful widget``` karena tidak perlu melacak perubahan keadaan/nilai dari properti

#### Stateful Widget
* Memiliki keadaan internal yang berubah setelah dibuat selama waktu eksekusi aplikasi
* Lebih cocok untuk komponen yang dinamis dan interaktif karena ketika keadaan berubah, ```stateful widget``` akan kembali load dirinya sendiri dengan nilai yang telah diperbarui

### Widget yang digunakan untuk menyelesaikan Tugas 7
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

## Tugas 8
### Perbedaan antara ```Navigator.push()``` dan ```Navigator.pushReplacement()``` dan contoh penggunaan yang tepat pada keduanya
#### Navigator.push()
```push()``` digunakan untuk mendorong halaman baru ke atas stack navigator sehingga pengguna dapat kembali ke halaman sebelumnya dengan tombol kembali atau dengan memanggil ```Navigator.pop()```. Stack akan bertambah setiap pemanggilan ```push()``` dilakukan. Penggunaan yang tepat untuk ```push()``` adalah ketika kemampuan untuk kembali ke halaman sebelumnya dapat dilakukan. 
Contoh penggunaan untuk metode ini adalah penggunaan aplikasi e-commerce ketika pengguna ingin memilih sebuah produk untuk melihat informasi detail mengenai sebuah produk tetapi masih dapat kembali ke daftar produk dengan menekan tombol kembali.
#### Navigator.pushReplacement()
```pushReplacement()``` digunakan untuk mengganti halaman saat ini dengan halaman baru di stack navigator sehingga halaman sebelumnya dilepaskan dan tidak bisa diakses kembali melalui tombol kembali. Penggunaan yang tepat untuk ```pushReplacement()``` adalah ketika kemampuan untuk kembali ke halaman sebelumnya tidak dapat dilakukan. 
Contoh penggunaan untuk metode ini adalah pada transisi splash screen ke home screen atau transisi halaman login ke halaman utama.

### Layout widget pada Flutter dan konteks penggunaannya masing-masing
1. ```Column``` dan ```Row```
* Digunakan untuk mengatur child secara vertikal atau horizontal. 
* Penggunaan: untuk pengelompokkan beberapa widget secara vertikal atau horizontal pada layout sederhana seperti formulir.

2. ```Stack```
* Digunakan untuk mengatur child secara tumpang tindih.
* Penggunaan: untuk mengatur child ketika ingin menumpuk widget atau membuat efek tumpang tindih.

3. ```Container```
* Digunakan untuk styling, padding, margins, dan constraints untuk satu child widget.
* Penggunaan: untuk membungkus widget tunggal dengan properti tertentu seperti warna latar belakang, border, atau ukuran.

4. ```Padding```
* Digunakan untuk menambahkan ruang kosong di sekitar widget child.
* Penggunaan: untuk memberikan ruang tambahan di dalam widget lain tanpa mengubah tampilan widget tersebut.

5. ```Align``` dan ```Center```
* Digunakan untuk menyesuaikan posisi child di di dalam dirinya.
* Penggunaan: untuk menentukan posisi spesifik atau memusatkan konten.

6. ```Expanded``` dan ```Flexible```
* Digunakan untuk mengatur ukuran anak untuk mengisi ruang yang tersedia atau memberikan fleksibilitas dalam penyesuaian ukuran child tergantung pada ruang yang tersedia dan faktor fleksibilitasnya. 
* Penggunaan: untuk mengontrol bagaimana ruang dibagi antara widget child.

7. ```GridView```
* Digunakan untuk menampilkan widget dalam grid dua dimensi.
* Penggunaan: untuk menyediakan pembagian penempatan dan pilihan di mana setiap elemen grid adalah pilihan yang dapat diklik.

8. ```ListView```
* Digunakan untuk menampilkan widget dalam daftar yang dapat discroll,
* Penggunaan: untuk menyediakan kemampuan menampilkan data yang panjang atau konten yang perlu discroll.

9. ```Wrap```
* Digunakan untuk menampilkan widget dalam beberapa baris atau kolom dan akan beralih ke baris atau kolom baru jika tidak ada cukup ruang.
* Penggunaan: untuk menampilkan widget yang jumlahnya dinamis secara rapi.

10. ```ConstrainedBox```
* Digunakan untuk menambahkan batasan ukuran pada widget child.
* Penggunaan: untuk mengatur ukuran minimum atau maksimal child.

11. ```SizedBox```
* Digunakan untuk memberikan ruang kosong dengan ukuran spesifik.
* Penggunaan: untuk memberikan ruang antar widget atau untuk memberikan dimensi tetap pada widget tertentu.

12. ```AspectRatio```
* Digunakan untuk menjaga rasio aspek widget anaknya.
* Penggunaan: untuk memastikan bahwa sebuah widget mempertahankan rasio aspeknya terlepas dari batasan luar.

### Elemen input pada form yang dipakai pada Tugas 8
1. ```TextFormField``` untuk Judul Buku
* ```onChanged``` digunakan untuk mengupdate variabel ```_name``` degan teks yang dimasukkan pengguna setiap kali nilai dalam field berubah.
* ```validator``` digunakan untuk memastikan bahwa elemen input tidak kosong dan input sesuai dengan tipe data atribut elemen. ```validator``` akan memberikan pesan kesalahan jika kondisi tidak terpenuhi.

2. ```TextFormField``` untuk Jumlah Buku
* ```onChanged``` digunakan untuk mengubah teks yang dimasukkan menjadi nilai integer dan mengupdate variabel ```_amount_``` degan nilai yang sudah dibuah menjadi integer setiap kali nilai dalam field berubah.
* ```validator``` digunakan untuk memastikan bahwa elemen input tidak kosong dan input sesuai dengan tipe data atribut elemen. ```validator``` akan memberikan pesan kesalahan jika kondisi tidak terpenuhi.

3. ```TextFormField``` untuk Deskripsi
* ```onChanged``` digunakan untuk mengupdate variabel ```_description_``` degan teks yang dimasukkan pengguna setiap kali nilai dalam field berubah.
* ```validator``` digunakan untuk memastikan bahwa elemen input tidak kosong dan input sesuai dengan tipe data atribut elemen. ```validator``` akan memberikan pesan kesalahan jika kondisi tidak terpenuhi.

Seperti yang sudah disebutkan, ```TextFormField``` digunakan karena dilengkapi dengan fitur bawaan untuk validasi dan kemampuan untuk menampilkan pesan kesalahan. Widget ini membuat proses pengambilan dan penanganan input teks menjadi lebih mudah dan efisien. Sedangkan ```validator``` digunakan karena setiap elemen input pada form harus terisi sesuai dengan tipe data atribut agar data dapat diproses dengan tepat dalam kode program selanjutnya. ```onChanged``` juga digunakan untuk mengupdate setiap perubahan yang pengguna lakukan agar data yang tersimpan merupakan data yang diperbarui secara _real-time_.

### Penerapan _clean architecture_ pada aplikasi Flutter
Penerapan _clean architecture_ pada aplikasi Flutter merupakan upaya untuk memisahkan kode menjadi beberapa lapisan yang berbeda dengan tanggung jawab yang terpisah. Hal ini ditujukan untuk meningkatkan _scalability_ dan memudahkan _maintenance_ kode program. 
1. _Presentation Layer_
* Lapisan ini berisi UI dan logika yang mengendalikan UI seperti widget dan page.
* Menerapkan ```Bloc``` atau ```Provider``` sebagai state management untuk menghubungkan _presentation layer_ dengan _domain layer_.
* Menerapkan navigator untuk routing dan navigasi.

2. _Domain Layer_
* Lapisan ini berisi aturan bisnis inti aplikasi dan _use case_.
* Mendefinisikan abstraksi dengan _interface/abstract classes_ untuk lapisan data.
* Mengandung entitas yang merupakan objek bisnis murni yang tidak bergantung pada lapisan lain.

3. _Data Layer_
* Lapisan ini bertanggung jawab atas akses data, baik dari database lokal seperti SQLite, Hive, atau dari layanan jarak jauh melalui API.
* Mengimplementasikan repositori yang dijelaskan _domain layer_.
* Menggunakan Model untuk konversi data mentah ke format yang lebih berguna untuk aplikasi atau sebaliknya.

Langkah-langkah dalam menerapkan _clean architecture_ pada Flutter:
1. Mendefinisikan entitas sebagai representasi bisnis dari objek yang dikerjakan.
2. Membuat _use case_.
3. Mendesain kontrak repositori untuk mendefinisikan operasi yang dapat dilakukan terhadap sumber data.
4. Mengimplementasikan repositori dengan kode yang berinteraksi dengan database atua jaringan.
5. _State management_ untuk menghubungkan UI dengan logika bisnis.
7. _Dependency injection_ untuk mengurangi ketergantungan dan membuat kode lebih mudah 6iuji.
7. _Testing_

## Tugas 9
### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

### Fungsi dari CookieRequest dan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter
Fungsi dari CookieRequest adalah untuk menyimpan dan mengelola data sesi pengguna, seperti token autentikasi atau preferensi pengguna. Hal ini sangat penting dalam aplikasi yang membutuhkan pemeliharaan sesi pengguna, seperti penggunaan fitur login yang ada dalam aplikasi dekappy ini.

Alasan mengapa sebuah instance CookieRequest perlu dibagikan ke semua komponen dalam aplikasi adalah untuk menjaga konsistensi sesi pengguna di seluruh aplikasi. Ini memastikan bahwa setiap komponen aplikasi dapat mengakses dan memanfaatkan data sesi yang sama. Misalnya, jika pengguna telah masuk (login), cookie yang memuat token autentikasi harus dapat diakses oleh semua komponen yang memerlukan verifikasi autentikasi, sehingga pengguna tidak perlu masuk berulang kali saat berpindah antar fitur aplikasi.

### Mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter
1. Mendefinisikan sebuah model dalam Flutter yang sesuai dengan struktur data JSON yang diharapkan. Model ini adalah kelas Dart dengan properti yang sesuai dengan kunci dalam data JSON. Di dalam kelas ini, kita juga mengimplementasikan metode fromJson dan toJson untuk mengonversi data antara format JSON dan objek Dart.

2. Mengambil data dari web service menggunakan paket http di Flutter. Untuk mengambil data dari web service menggunakan paket http di flutter, saya mengirim permintaan HTTP ke endpoint web service dan menerima respons. Respons  biasanya dalam format JSON dan kemudian saya parse menggunakan metode jsonDecode dari Dart untuk mengubahnya menjadi objek Dart (Map atau List).

3. Menggunakan metode fromJson dari model yang telah dibuat untuk mengubah data JSON yang telah diparse menjadi objek model Dart. Jika data JSON adalah array, saya akan mengiterasi setiap item dan mengonversi setiap item menjadi instance model.

4. Untuk menampilkan data di Flutter, saya menggunakan berbagai widget yang disediakan oleh Flutter. Dalam tugas ini, saya menggunakan ListView.builder untuk menampilkan daftar item

### Mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter
1. Di sisi Flutter, pengguna memasukkan detail akun mereka, seperti username dan password, melalui antarmuka pengguna. Flutter kemudian mengirimkan data ini ke server Django menggunakan permintaan HTTP dengan metode POST dan data dikirim dalam format JSON. 
2. Setelah menerima data, Django memroses data untuk autentikasi. Proses ini melibatkan pengecekan ke database untuk memastikan bahwa detail akun yang diberikan valid dan sesuai dengan yang ada di database. Jika berhasil, Django akan menghasilkan token yang dikirim kembali ke Flutter sebagai bagian dari respons autentikasi.
3. Di sisi Flutter, aplikasi menanggapi respons dari Django. Jika autentikasi berhasil, aplikasi menyimpan token untuk sesi pengguna dan mengarahkan mereka ke halaman utama atau dashboard aplikasi. Ini memungkinkan pengguna mengakses fitur-fitur yang tersedia sesuai dengan hak akses mereka. Sebaliknya, jika autentikasi gagal, Flutter akan menampilkan pesan kesalahan dan meminta pengguna untuk mencoba lagi. 
4. Setelah pengguna berhasil masuk, pengguna dapat melihat dan berinteraksi dengan menu atau fitur aplikasi yang tersedia, yang sekarang diakses dengan keamanan dan verifikasi identitas yang telah dilakukan oleh Django. Proses ini menjamin keamanan dalam transaksi data dan memastikan bahwa hanya pengguna terotentikasi yang dapat mengakses fitur tertentu dalam aplikasi.

### Seluruh widget yang dipakai pada tugas ini dan fungsinya masing-masing

## Cara mengimplementasi checklist
### Tugas 7

#### 1. Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya
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

#### 2. Membuat tiga tombol sederhana dengan ikon dan teks untuk: melihat daftar item (```Lihat Item```), menambah item (```Tambah Item```), dam logout (```Logout```)
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

#### 3. Memunculkan ```Snackbar```:
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

### Tugas 8
#### 1. Membuat halaman formulir tambah item baru
Untuk membuat halaman formulir tambah item baru, saya membuat berkas dengan nama ```librory_form.dart``` pada subdirektori ```lib```. Saya mengimport beberapa package yang dibutuhkan dengan menambahkan kode ```import 'package:flutter/material.dart';```. Setelah itu, saya menambahkan kode sebagai berikut:
```
class LibroryFormPage extends StatefulWidget {
  const LibroryFormPage({super.key});

  @override
  State<LibroryFormPage> createState() => _ShopFormPageState();
}
```
##### a. Memakai tiga elemen input, yaitu ```name```, ```amount```, dan ```description```
Untuk dapat memakai tiga elemen input, pada ```class _ShopFormPageState extends State<LibroryFormPage>``` saya menambahkan kode sebagai berikut:
```
final _formKey = GlobalKey<FormState>();
String _name = "";
int _amount = 0;
String _description = "";
```
Setelah itu, pada ```Widget build(BuildContext context)```, saya menambahkan ```Form``` dengan ```child Column``` dan menambahkan potongan kode-kode di bawah pada bagian Column:
1. Untuk menambahkan elemen input ```name```
```
Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextFormField(
    decoration: InputDecoration(
      hintText: "Judul Buku",
      labelText: "Judul Buku",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
    onChanged: (String? value) {
      setState(() {
        _name = value!;
      });
    },
  ),
),
```
2. Untuk menambahkan elemen input ```amount```
```
Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextFormField(
    decoration: InputDecoration(
      hintText: "Jumlah Buku",
      labelText: "Jumlah Buku",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
    // Tambahkan variabel yang sesuai
    onChanged: (String? value) {
      setState(() {
        _amount = int.parse(value!);
      });
    },
  ),
),
```
3. Untuk menambahkan elemen input ```description```
```
Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextFormField(
    decoration: InputDecoration(
      hintText: "Deskripsi",
      labelText: "Deskripsi",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
    onChanged: (String? value) {
      setState(() {
        // Tambahkan variabel yang sesuai
        _description = value!;
      });
    },
  ),
),
```
##### b. Memiliki sebuah tombol ```Save```
Untuk menambahkan tombol ```Save```, saya menambahkan potongan kode sebagai berikut pada bagian yang sama seperti ```poin a```:
```
Align(
  alignment: Alignment.bottomCenter,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.indigo),
      ),
      child: const Text(
        "Save",
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
),
```
Akan tetapi, tombol ```Save``` belum melakukan apa-apa sehingga validasi atas elemen input akan dijelaskan pada bagian selanjutnya.

##### c. Melakukan validasi atas setiap elemen dengan ketentuan bahwa setiap elemen input tidak boleh kosong dan harus berisi data dengan tipe data atribut modelnya
Untuk melakukan validasi, saya melakukan modifikasi pada body ```Form```.
1. Validasi elemen input ```name``` dengan tipe data ```String```
Pada bagian yang sama seperti pada ```poin a.1```, saya menambahkan potongan kode sebagai berikut:
```
validator: (String? value) {
  if (value == null || value.isEmpty) {
    return "Judul buku tidak boleh kosong!";
  }
  return null;
},
```
Kode ini melakukan validasi bahwa tipe data berupa ```String``` dan memastikan bahwa elemen input ```name``` harus terisi.

2. Validasi elemen input ```amount``` dengan tipe data ```int```
Pada bagian yang sama seperti pada ```poin a.2```, saya menambahkan potongan kode sebagai berikut:
```
validator: (String? value) {
  if (value == null || value.isEmpty) {
    return "Jumlah buku tidak boleh kosong!";
  }
  if (int.tryParse(value) == null) {
    return "Jumlah buku harus berupa angka!";
  }
  return null;
},
```
Kode ini melakukan validasi bahwa tipe data berupa ```int``` dan memastikan bahwa elemen input ```amount``` harus terisi.

3. Validasi elemen input ```description``` dengan tipe data ```String```
Pada bagian yang sama seperti pada ```poin a.3```, saya menambahkan potongan kode sebagai berikut:
```
validator: (String? value) {
  if (value == null || value.isEmpty) {
    return "Deskripsi tidak boleh kosong!";
  }
  return null;
},
```
Kode ini melakukan validasi bahwa tipe data berupa ```String``` dan memastikan bahwa elemen input ```description``` harus terisi.

4. Mengaktifkan validator dengan memodifikasi tombol ```Save``` yang sebelumnya telah dibuat
Untuk mengaktifkan validator, saya menambahkan potongan kode sebagai berikut pada ```poin b``` khususnya pada child ```ElevatedButton```:
```
onPressed: () {
  if (_formKey.currentState!.validate()) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Buku berhasil tersimpan'),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
    _formKey.currentState!.reset();
  }
},
```
Dengan menambahkan potongan kode sebagai berikut, maka setiap tombol ```Save``` ditekan, maka setiap elemen input akan dipastikan tidak kosong dan sesuai dengan tipe data atribut modelnya.

#### 2. Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol ```Tambah Item``` pada halaman utama
Untuk dapat mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol ```Tambah Item``` pada halaman utama, saya menambahkan potongan kode sebagai berikut pada file ```librory_card.dart```, tepatnya pada ```widget Build``` milik class ```LibroryCard```:
```
onTap: () {
  // Memunculkan SnackBar ketika diklik
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(
        content: Text("Kamu telah menekan tombol ${item.name}!")));

  // Navigate ke route yang sesuai (tergantung jenis tombol)
  if (item.name == "Tambah Item") {
    /*
      Menggunakan Navigator.push untuk melakukan navigasi 
      ke MaterialPageRoute yang mencakup LibroryFormPage
    */
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LibroryFormPage(),
        ));
  }
},
```
Dengan menggunakan ```pushReplacement```, maka saya dapat push route yang telah diberikan dan menampilkan tampilan halaman yang telah dipush.

#### 3. Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah ```pop-up``` setelah menekan tombol ```Save``` pada halaman formulir tambah item baru
Untuk dapat memunculkan data sesuai isi dari formulir yang diisi dalam sebuah ```pop-up``` setelah menekan tombol ```Save``` pada halaman formulir tambah item baru, saya menambahkan potongan kode sebagai berikut pada bagian yang sama seperti ```poin c.4``` khususnya pada bagian ```return AlertDialog```:
```
content: SingleChildScrollView(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // Memunculkan value-value lainnya
      Text('Judul Buku: $_name'),
      Text('Jumlah Buku: $_amount'),
      Text('Deskripsi: $_description'),
    ],
  ),
),
```
Potongan kode di atas akan memunculkan value elemen ```name```, ```amount```, dan ```description``` pada sebuah ```pop-up``` dengan model ```SingleChildScrollView```.

#### 4. Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:
Untuk membuah sebuah drawer pada aplikasi Librory, saya membuat folder ```widgets``` pada subdirektori ```lib``` dan membuat file ```left_drawer.dart``` pada folder ```widgets``` tersebut. Saya mengimport beberapa package yang dibutuhkan dengan menambahkan potongan kode sebagai berikut:
```
import 'package:flutter/material.dart';
import 'package:librory/screens/librory_form.dart';
import 'package:librory/screens/menu.dart';
```
Selain itu, saya juga menambahkan potongan kode sebagai berikut untuk menambah informasi pada drawer:
```
class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Column(
              children: [
                Text(
                  'Librory',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Catat seluruh bukumu di sini!",
                  // Menambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

``` 
##### a. Memiliki dua buah opsi, yaitu ```Halaman Utama``` dan ```Tambah Item```
Untuk menambah dua buah opsi, yaitu ```Halaman Utama``` dan ```Tambah Item```, saya menambahkan potongan kode sebagai berikut:
```
ListTile(
  leading: const Icon(Icons.home_outlined),
  title: const Text('Halaman Utama'),
  // Bagian redirection ke MyHomePage
  onTap: () {},
),
ListTile(
  leading: const Icon(Icons.add_shopping_cart),
  title: const Text('Tambah Item'),
  // Bagian redirection ke ShopFormPage
  onTap: () {},
),
```
Akan tetapi, ketika salah satu maupun kedua opsi ditekan, perubahan tidak akan terjadi karena pengimplementasian kode pada bagain ```onTap``` masih kosong. Maka dari itu, saya akan melakukan modifikasi dan menambahkan bagian redirection pada ```poin b``` dan ```poin c``` di bawah ini.
##### b. Ketika memilih opsi ```Halaman Utama```, maka aplikasi akan mengarahkan pengguna ke halaman utama
Untuk menambahkan kemampuan redirection ke halaman utama, saya menambahkan potongan kode sebagai berikut:
```
Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => MyHomePage(),
    ));
```
Kode di atas akan menggantikan halaman yang saat ini sedang dikunjungi dengan halaman ```MyHomePage```. Penggunaan ```MaterialPageRoute``` dimanfaatkan untuk menyediakan animasi dan styling yang sesuai dengan material design ketika berpindah antar halaman.
##### c. Ketika memilih opsi ```Tambah Item```, maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru
Untuk menambahkan kemampuan redirection ke form tambah item baru, saya menambahkan potongan kode sebagai berikut:
```
Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => const LibroryFormPage(),
    ));
```
Kode di atas akan menggantikan halaman yang saat ini sedang dikunjungi dengan halaman ```LibroryFormPage```. Penggunaan ```MaterialPageRoute``` dimanfaatkan untuk menyediakan animasi dan styling yang sesuai dengan material design ketika berpindah antar halaman.

### Tugas 9
#### 1. Membuat halaman login pada proyek tugas Flutter
Untuk membuat halaman login pada proyek tugas Flutter, saya membuat aplikasi baru pada Django dengan nama ```authentication``` yang kemudian akan digunakna untuk mengintegrasikan autentikasi dengan Flutter. Saya menambahkan fungsi login yang sesuai pada file ```views.py``` di aplikasi ```authentication``` dan melakukan routing. Setelah itu, saya membuat file baru bernama ```login.dart``` di dalam folder ```lib/screens``` dengan potongan kode sebagai berikut.
```
// ignore_for_file: use_build_context_synchronously

import 'package:librory/screens/menu.dart';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () async {
                String username = _usernameController.text;
                String password = _passwordController.text;

                // Cek kredensial
                // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                // Untuk menyambungkan Android emulator dengan Django pada localhost,
                // gunakan URL http://10.0.2.2/
                final response =
                    await request.login("http://127.0.0.1:8000/auth/login/", {
                  'username': username,
                  'password': password,
                });

                if (request.loggedIn) {
                  String message = response['message'];
                  String uname = response['username'];
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(SnackBar(
                        content: Text("$message Selamat datang, $uname.")));
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Login Gagal'),
                      content: Text(response['message']),
                      actions: [
                        TextButton(
                          child: const Text('OK'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  );
                }
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
```
Setelah itu, untuk mewajibkan pengguna melakukan login pada aplikasi, saya mengubah kode pada file ```main.dart``` di folder ```lib``` dengan potongan kode sebagai berikut.
```
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
          title: 'Librory',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
            useMaterial3: true,
          ),
          home: LoginPage()),
    );
  }
}

```

#### 2. Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter
Untuk dapat mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter, saya menginstall beberapa package pada Flutter dengan menjalankan perintah sebagai berikut.
```flutter pub add provider```
```flutter pub add pbp_django_auth```

Setelah itu, saya mengubah kode pada file ```main.dart``` pada folder ```lib``` duntuk dapat menyediakan cookierequest library dengan potongan kode sebagai berikut.
```
class MyApp extends StatelessWidget {
 const MyApp({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
     return Provider(
         create: (_) {
             CookieRequest request = CookieRequest();
             return request;
         },
         child: MaterialApp(
             title: 'Flutter App',
             theme: ThemeData(
                 colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
                 useMaterial3: true,
             ),
             home: LoginPage()),
            );
    }
}
```

#### 3. Membuat model kustom sesuai dengan proyek aplikasi Django
Untuk dapat membuat model kustom sesuai dengan proyek aplikasi Django, saya menyalin data pada endpoint JSON kemudian mengconvert data tersebut ke dalam bahasa Dart dengan menggunakan web bantuan yaitu [QuickType](https://app.quicktype.io/). Setelah mendapatkan kode yang sesuai, saya membuat folder baru bernama ```models``` pada folder ```lib``` dan mengisi folder tersebut dengan file bernama ```product.dart``` yang berisi potongan kode sebagai berikut.
```
// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  String model;
  int pk;
  Fields fields;

  Product({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
      };
}

class Fields {
  int user;
  String name;
  int amount;
  int rented;
  String category;
  String description;

  Fields({
    required this.user,
    required this.name,
    required this.amount,
    required this.rented,
    required this.category,
    required this.description,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        amount: json["amount"],
        rented: json["rented"],
        category: json["category"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "amount": amount,
        "rented": rented,
        "category": category,
        "description": description,
      };
}
```

#### 4. Membuat halaman yang berisi daftar semua item yang terdapat pada _endpoint_ ```JSON``` di Django
Untuk membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di DJANGO, saya membuat file bernama ```list_product.dart``` pada folder ```lib/screens``` dengan isi potongan kode sebagai berikut untuk memroses daftar produk dari endpoint JSON menjadi objek ```Product```.
```
class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  Future<List<Product>> fetchProduct() async {
    var url = Uri.parse('http://127.0.0.1:8000/json/');
    var response = await http.get(
      url,
      headers: {"Content-Type": "application/json"},
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object Product
    List<Product> listProduct = [];
    for (var d in data) {
      if (d != null) {
        listProduct.add(Product.fromJson(d));
      }
    }
    return listProduct;
  }

```

Setelah itu, untuk menampilkan atribut ```name```, ```amount``` dan ```description``` pada halaman, saya juga menambahkan potongan kode sebagai berikut.
```
@override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Product'),
        ),
        drawer: const LeftDrawer(),
        body: FutureBuilder(
            future: fetchProduct(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return const Column(
                    children: [
                      Text(
                        "Tidak ada data produk.",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) {
                      // Mengambil data produk saat ini
                      var product = snapshot.data![index];

                      return InkWell(
                        onTap: () {
                          // Navigasi ke halaman detail produk dengan data produk
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ProductDetailPage(product: product),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.fields.name,
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text("Amount: ${product.fields.amount}"),
                              const SizedBox(height: 10),
                              Text("Written by: ${product.fields.description}"),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              }
            }));
  }
```
#### 5. Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item 
Untuk membuat halaman detail untuk setiap item yang terdapat pada halaman daftar item, saya membuat file bernama ```product_detail.dart``` pada folder ```lib/screens``` dan mengisinya dengan potongan kode sebagai berikut untuk menampilkan ```name```,```amount```, ```rented```, ```category```, dan ```description``` dari item yang sebelumnya ditekan.
```
class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Name: ${product.fields.name}",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Amount: ${product.fields.amount}"),
            const SizedBox(height: 10),
            Text("Rented: ${product.fields.rented}"),
            const SizedBox(height: 10),
            Text("Category: ${product.fields.category}"),
            const SizedBox(height: 10),
            Text("Description: ${product.fields.description}"),
          ],
        ),
      ),
    );
  }
}

```