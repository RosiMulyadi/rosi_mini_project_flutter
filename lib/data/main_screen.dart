import 'package:flutter/material.dart';
import 'package:rosi_mini_project_flutter/data/data_makanan.dart';
import 'package:rosi_mini_project_flutter/data/favorite_screen.dart';
import 'package:rosi_mini_project_flutter/data/resep.dart';
import 'package:rosi_mini_project_flutter/data/tambah_makanan_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();

}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  void _onTambahMakananPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TambahMakananScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Center(child: Text('Wisata Kuliner Makanan Khas Sumenep')),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue[900]!, Colors.blue[400]!],
          ),
        ),
        child: ListView.builder(
          itemCount: dataMakanan.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      makanan: dataMakanan[index],
                    ),
                  ),
                );
              },
              child: Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          dataMakanan[index].image,
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
                          dataMakanan[index].nama,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black87,
                          ),
                        ),
                        Text('Harga : ${dataMakanan[index].harga}'),
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => FavoriteScreen()),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[200],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Tambah',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            if (index == 1) {
              _onTambahMakananPressed();
            }
          });
        },
      ),
    );
  }
}

