import 'package:flutter/material.dart';

class Dict_Screen extends StatelessWidget {
  const Dict_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Layar 2",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
    );
  }
}