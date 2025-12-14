import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 500,
              height: 300,
              child: Image.asset("assets/images/nepal.jpg", fit: BoxFit.fill),
            ),
            SizedBox(height: 20),
            Container(
              width: 500,
              height: 300,
              child: Image.network(
                "https://th.bing.com/th/id/R.78904fa22eef70acfc8ed53647ccfe66?rik=a%2fq%2bKKpNaW8LBw&riu=http%3a%2f%2fglobaltravelservicesonline.com%2fwp-content%2fuploads%2f2013%2f06%2fMount-Everest-Gold-summit.jpg&ehk=SoIwDq15xkP5ubCmEjL7Zm367dNCproBW50epXmKPE8%3d&risl=1&pid=ImgRaw&r=0",
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
