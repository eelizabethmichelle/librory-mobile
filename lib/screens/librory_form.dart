import 'package:flutter/material.dart';
import 'package:librory/widgets/left_drawer.dart';

class LibroryFormPage extends StatefulWidget {
  const LibroryFormPage({super.key});

  @override
  State<LibroryFormPage> createState() => _ShopFormPageState();
}

class _ShopFormPageState extends State<LibroryFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _amount = 0;
  String _description = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Form Tambah Buku',
          ),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      // Tambahkan drawer yang sudah dibuat
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Judul buku tidak boleh kosong!";
                  }
                  return null;
                },
              ),
            ),
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
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Jumlah buku tidak boleh kosong!";
                  }
                  if (int.tryParse(value) == null) {
                    return "Jumlah buku harus berupa angka!";
                  }
                  return null;
                },
              ),
            ),
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
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Deskripsi tidak boleh kosong!";
                  }
                  return null;
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.indigo),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Buku berhasil tersimpan'),
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
                  child: const Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
