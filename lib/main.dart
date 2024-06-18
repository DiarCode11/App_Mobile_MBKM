import 'package:flutter/material.dart';
import 'aksara_dict.dart';
import 'notes.dart';
import 'meet_3/main_screen/meet_3_screen.dart';
import 'meet_4/screens/home.dart';
import 'meet_5/main_screen/meet_5_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

// INI DRAWER
Widget buildDrawer(BuildContext context) {
  return Drawer(
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          height: 120,
          color: Colors.cyan,
          alignment: Alignment.bottomLeft,
          child: Text(
            "Menu Pilihan",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        ListTile(
          title: Text('Beranda'),
          leading: Icon(Icons.home),
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        ListTile(
          title: Text('Kamus Aksara'),
          leading: Icon(Icons.menu_book),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Dict_Screen()));
          },
        ),
        ListTile(
          title: Text('Catatan'),
          leading: Icon(Icons.note_add_sharp),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Notes_Screen()));
          },
        ),
        ListTile(
          title: Text('Tentang Aplikasi'),
          leading: Icon(Icons.book_rounded),
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        ListTile(
          title: Text('State And Widget Management'),
          leading: Icon(Icons.book_rounded),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Meet3(),
              ),
            );
          },
        ),
        ListTile(
          title: Text('API Integration and GET DATA'),
          leading: Icon(Icons.data_array_rounded),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Home(),
              ),
            );
          },
        ),
        ListTile(
          title: Text('Kamera'),
          leading: Icon(Icons.camera),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Meet5(),
              ),
            );
          },
        )
      ],
    ),
  );
}

// INI CLASS HOMESCREEN DENGAN STATEFULLWIDGET

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Tempat Fungsi

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(context),
      appBar: AppBar(
        title: Text(
          'Belajar Aksara',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.cyan,
                            width: 2,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Aksara Latin',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.cyan, // Warna latar belakang untuk ikon
                          borderRadius: BorderRadius.circular(50), // Sudut yang dibulatkan
                        ),
                        padding: EdgeInsets.all(15),
                        child: Icon(
                          Icons.sync_alt_outlined,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.cyan,
                            width: 2,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Aksara Bali',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text(
                    'Hasil transliterasi:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: TextField(
                  maxLines: 3,
                  minLines: 1,
                  decoration: InputDecoration(
                    labelText: 'Masukkan teks ',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
