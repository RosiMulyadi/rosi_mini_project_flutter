import 'package:flutter/material.dart';
import 'package:rosi_mini_project_flutter/data/data_makanan.dart';
import 'package:rosi_mini_project_flutter/data/resep.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<Resep> _makananDisukai = [];

  @override
  void initState() {
    super.initState();
    _updateMakananDisukai();
  }

  void _updateMakananDisukai() {
    setState(() {
      _makananDisukai = dataMakanan.where((makanan) => makanan.isFavorite).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Makanan Favorit'),
      ),
      body: ListView.builder(
        itemCount: _makananDisukai.length,
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      _makananDisukai[index].image,
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _makananDisukai[index].nama,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black87,
                      ),
                    ),
                    Text('Harga : ${_makananDisukai[index].harga}'),
                    ClipOval(
                      child: Material(
                        color: Colors.grey[600],
                        child: InkWell(
                          splashColor: Colors.red[900],
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: Icon(Icons.favorite),
                          ),
                          onTap: () {
                            setState(() {
                              _makananDisukai[index].isFavorite = false;
                              _updateMakananDisukai();
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Makanan tidak disukai')),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
