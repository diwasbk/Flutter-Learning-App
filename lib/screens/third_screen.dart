import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "Column Item  1",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "Column Item  2",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "Column Item  3",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "Column Item  4",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "Column Item  5",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "Column Item  6",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "Column Item  7",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "Column Item  8",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
