import 'package:flutter/material.dart';
import 'package:rosi_mini_project_flutter/data/resep.dart';

class CheckoutScreen extends StatelessWidget {
  final List<Resep> pesanan;

  const CheckoutScreen({Key? key, required this.pesanan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Hitung total harga pesanan
    int totalHarga = 0;
    pesanan.forEach((makanan) {
      totalHarga += int.parse(makanan.harga.replaceAll(".", ""));
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Daftar Pesanan',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: pesanan.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(pesanan[index].nama),
                    subtitle: Text(pesanan[index].harga),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        pesanan.removeAt(index);
                        Navigator.pop(context, pesanan);
                      },
                    ),
                  );
                },
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Total Harga:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Rp${totalHarga.toString().replaceAllMapped(regHarga, (match) => '${match[1]}.${match[2]}')}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Buat Pesanan'),
              onPressed: () {
                pesanan.clear();
                Navigator.pop(context, pesanan);
              },
            ),
          ],
        ),
      ),
    );
  }
}
final regHarga = RegExp(r'(\d{1,3})(\d{3})');