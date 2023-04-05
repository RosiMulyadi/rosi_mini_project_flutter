import 'package:flutter/material.dart';
import 'package:rosi_mini_project_flutter/data/resep.dart';
import 'package:rosi_mini_project_flutter/data/checkout_screen.dart';

class DetailScreen extends StatefulWidget {
  final Resep makanan;

  const DetailScreen({Key? key, required this.makanan}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isOrdered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.makanan.nama),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            widget.makanan.image,
            width: MediaQuery.of(context).size.width,
            height: 250,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              widget.makanan.tutorial,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  widget.makanan.harga,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    widget.makanan.isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: widget.makanan.isFavorite ? Colors.red : null,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.makanan.isFavorite = !widget.makanan.isFavorite;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          widget.makanan.isFavorite
                              ? 'Makanan disukai'
                              : 'Makanan tidak disukai',
                        ),
                      ),
                    );
                    Navigator.pop(context, widget.makanan);
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text(isOrdered ? 'Pesanan Dibatalkan' : 'Beli / Pesan'),
            style: ElevatedButton.styleFrom(
              primary: isOrdered ? Colors.blue : null,
              onPrimary: isOrdered ? Colors.white : null,
            ),
            onPressed: () {
              setState(() {
                isOrdered = !isOrdered;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    isOrdered
                        ? 'Pesanan berhasil ditambahkan'
                        : 'Pesanan berhasil dibatalkan',
                  ),
                ),
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckoutScreen(
                      pesanan: [],
                    ),
                  ),
              );
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
