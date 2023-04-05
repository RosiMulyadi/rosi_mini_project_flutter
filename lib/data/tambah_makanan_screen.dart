import 'package:flutter/material.dart';
import 'package:rosi_mini_project_flutter/data/data_makanan.dart';
import 'package:rosi_mini_project_flutter/data/resep.dart';

class TambahMakananScreen extends StatefulWidget {
  const TambahMakananScreen({Key? key}) : super(key: key);

  @override
  _TambahMakananScreenState createState() => _TambahMakananScreenState();
}

class _TambahMakananScreenState extends State<TambahMakananScreen> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController hargaController = TextEditingController();
  final TextEditingController deskripsiController = TextEditingController();
  final TextEditingController imageController = TextEditingController();

  void _tambahMakanan() {
    final String nama = namaController.text;
    final String deskripsi = deskripsiController.text;
    final String harga = hargaController.text;
    final String image = imageController.text;

    // Add new recipe
    Resep makananBaru = Resep(
      nama: nama,
      harga: harga,
      tutorial: deskripsi,
      image: image,
    );
    dataMakanan.add(makananBaru);

    // Clear text fields
    namaController.clear();
    hargaController.clear();
    deskripsiController.clear();
    imageController.clear();

    // Navigate back to previous screen
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Makanan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: namaController,
              decoration: InputDecoration(
                labelText: 'Nama Makanan',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: hargaController,
              decoration: InputDecoration(
                labelText: 'Harga',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: deskripsiController,
              decoration: InputDecoration(
                labelText: 'Deskripsi',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: imageController,
              decoration: InputDecoration(
                labelText: 'Image URL',
              ),
              keyboardType: TextInputType.url,
            ),
            SizedBox(height: 16.0),
            Image.network(
                imageController.text
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (namaController.text.isNotEmpty &&
                    hargaController.text.isNotEmpty) {
                  _tambahMakanan();
                }
              },
              child: Text('Tambah'),
            ),
          ],
        ),
      ),
    );
  }
}
