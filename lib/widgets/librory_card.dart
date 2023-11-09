import 'package:flutter/material.dart';
import 'package:librory/screens/librory_form.dart';

class LibroryItem {
  final String name;
  final IconData icon;
  final Color color;

  LibroryItem(this.name, this.icon, this.color);
}

class LibroryCard extends StatelessWidget {
  final LibroryItem item;

  const LibroryCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      child: InkWell(
        // Area responsif terhadap sentuhan
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
