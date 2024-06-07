import 'package:deteksi_gambar/meet_3/widget/widget_online_picture.dart';
import 'package:flutter/material.dart';

class Meet3 extends StatefulWidget {
  const Meet3({super.key});

  @override
  State<Meet3> createState() => _Meet3State();
}

class _Meet3State extends State<Meet3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meet 3'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _onlineImage(
              pathImage: 'https://wallpapercave.com/wp/WzABeb3.jpg',
              descImage: 'This image is Naruto'
            ),
            _onlineImage(
              pathImage: 'https://cdn0-production-images-kly.akamaized.net/0gMX-CZ1eudU6BDSFZnjYRp5TFs=/800x450/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/936144/original/053715500_1437741125-One-Punch_Man-maxresdefault1.jpg',
              descImage: 'This image is Saitama'
            ),
            _localImage(
              pathImage: 'assets/images/inuyasha.jpg',
              descImage: 'This is Local Image'
            ),
          ],
        ),
      ),
    );
  }

  Widget _onlineImage({
    required String pathImage,
    required String descImage
    }) {

    
    return OnlinePictureWidget(
      pathImage: pathImage,
      descImage: descImage,
    );
  }

  Widget _localImage({
    required String pathImage,
    required String descImage
    }) {

    // Untuk gambar local menggunakan column dan Image.asset
    return Column(
      children: [
        Image.asset(pathImage),
        Text(descImage),
      ],
    );
  }

}

