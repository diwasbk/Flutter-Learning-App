import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("WhatsApp", style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
        actions: [
          Icon(Icons.search, color: Colors.white,)
        ],
      ),
    );
  }
}