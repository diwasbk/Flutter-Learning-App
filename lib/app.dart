import 'package:flutter/material.dart';
import 'package:flutter_learning_app/screens/first_screen.dart';
import 'package:flutter_learning_app/screens/second_screen.dart';
import 'package:flutter_learning_app/screens/third_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ThirdScreen(),
    );
  }
}