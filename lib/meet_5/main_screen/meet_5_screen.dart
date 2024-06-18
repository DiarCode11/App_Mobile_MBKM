import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Meet5 extends StatefulWidget {
  const Meet5({
    super.key,
  });

  @override
  State<Meet5> createState() => _Meet5State();
}

class _Meet5State extends State<Meet5> {
  File? imageGallery;
  File? imageCamera;

  final _picker = ImagePicker();


  // Ambil gambar dari Gallery
  Future<void> _openImageGallery() async {
    final XFile? pickedImage = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        imageGallery = File(pickedImage.path);
      });
    }
  }

  // Ambil gambar dari kamera
  Future<void> _openImageCamera() async {
    final XFile? pickedImage = await _picker.pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      setState(() {
        imageCamera = File(pickedImage.path);
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kamera'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: _openImageGallery, 
                  child: const Text("Ambil gambar dari Galleri"
                )),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.center,
                  height: 300,
                  width: double.infinity,
                  color: Colors.grey[300],
                  child: imageGallery != null? Image.file(imageGallery!):Text('Tidak ada gambar'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(onPressed: _openImageCamera, child: const Text('Ambil gambar dari kamera')),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.center,
                  height: 300,
                  width: double.infinity,
                  color: Colors.grey[300],
                  child: imageCamera != null? Image.file(imageCamera!):Text('Tidak ada gambar')
                ),
              ],
            ),
          ),
        )
          

      ),
    );
  }
}

