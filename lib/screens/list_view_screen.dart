import 'package:flutter/material.dart';

List<String> users = [
  "Diwas Bk",
  "John Doe",
  "Sagar Bk",
  "Ram Thapa"
];

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [Icon(Icons.search, color: Colors.white)],
      ),
      body: ListView(
        children: users.map((user)=>Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadiusDirectional.circular(6)
          ),
          child: Text(user, style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),),
        )).toList(),
      ),
    );
  }
}