import 'package:flutter/material.dart';

class Notes_Screen extends StatelessWidget {
  const Notes_Screen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catatan",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
    );
  }
}