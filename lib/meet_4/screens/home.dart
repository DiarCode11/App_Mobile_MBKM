import 'package:flutter/material.dart';

import '../model/user_model.dart';
import '../services/api_service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<UserModel>? _userModel = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _userModel = (await ApiService().getUsers())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    List<String> imageUrl = [
      'https://nugrahayoganugraha.wordpress.com/wp-content/uploads/2012/01/kamus_bahasa_alay.jpg?w=640',
      "https://assets.yangpentinghepi.com/assets/picture/medium/2022/Mei/Artikel/Kelakuan%20Kocak%20Ayam%20Saat%20Ganggu%20Manusia%20Ini%20Bikin%20Geregetan%20dan%20Tepuk%20Jidat/Hiasan%20Dinding%20Biar%20Estetik%20Ini%20Malah%20Kelewat%20Absurd%20Dan%20Kocak%20Banget/Foto%20Absurd%20Kepala%20Orang%20'Ngebug'%20Ini%20Kocak%20dan%20Ajaib/1.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8QnMQFj0uZKsMyhKgVkM1SvtHYb3TOB5SXA&s",
      "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2024/04/27/Ilustrasi-orang-yang-lucu-2646384989.jpg"
    ];
    int i = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('REST API Example'),
      ),
      body: _userModel == null || _userModel!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _userModel!.length,
              itemBuilder: (context, index) {
                final user = _userModel![index];
                return Card(
                  elevation: 5,
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Image.network(
                            imageUrl[(i++) % imageUrl.length],
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // ID
                            Text(
                              'ID: ${user.id}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            // Name
                            Text(
                              'Name: ${user.name}',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            // Address
                            Text(
                              'Address: ${user.address.street}',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            // City
                            Text(
                              'City: ${user.address.city}',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            // Email
                            Text(
                              'Email: ${user.email}',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            // Phone
                            Text(
                              'Phone: ${user.phone}',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
