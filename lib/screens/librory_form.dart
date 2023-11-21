// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:librory/screens/menu.dart';
import 'package:librory/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class LibroryFormPage extends StatefulWidget {
  const LibroryFormPage({super.key});

  @override
  State<LibroryFormPage> createState() => _ShopFormPageState();
}

class _ShopFormPageState extends State<LibroryFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _amount = 0;
  int _rented = 0;
  String _category = "";
  String _description = "";

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

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
                  hintText: "Jumlah Buku Dipinjam",
                  labelText: "Jumlah Buku Dipinjam",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                // Tambahkan variabel yang sesuai
                onChanged: (String? value) {
                  setState(() {
                    _rented = int.parse(value!);
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Jumlah buku dipinjam tidak boleh kosong!";
                  }
                  if (int.tryParse(value) == null) {
                    return "Jumlah buku dipinjam harus berupa angka!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Kategori",
                  labelText: "Kategori",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    // Tambahkan variabel yang sesuai
                    _category = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Kategori tidak boleh kosong!";
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
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      // Kirim ke Django dan tunggu respons
                      final response = await request.postJson(
                          "http://127.0.0.1:8000/create-flutter/",
                          jsonEncode(<String, String>{
                            'name': _name,
                            'amount': _amount.toString(),
                            'rented': _rented.toString(),
                            'category': _category,
                            'description': _description,
                          }));
                      if (response['status'] == 'success') {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("Buku baru berhasil disimpan!"),
                        ));
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => MyHomePage()),
                        );
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content:
                              Text("Terdapat kesalahan, silakan coba lagi."),
                        ));
                      }
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
