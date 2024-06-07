import 'package:flutter/material.dart';

class OnlinePictureWidget extends StatelessWidget {
  const OnlinePictureWidget({
    required this.pathImage, //menampung nama atau file image
    required this.descImage,
    super.key
  });

  final String pathImage; // untuk tipe datanya
  final String descImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Image(image: NetworkImage(
            pathImage,
            ),
          ),
          Text(
            descImage,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}