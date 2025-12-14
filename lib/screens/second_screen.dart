import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "Row Item  1",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "Row Item  2",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "Row Item  3",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "Row Item  4",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "Row Item  5",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "Row Item  6",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "Row Item  7",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "Row Item  8",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "Row Item  9",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "Row Item  10",
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
