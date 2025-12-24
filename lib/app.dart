import 'package:flutter/material.dart';
import 'package:flutter_learning_app/screens/shared_pref_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SharedPrefScreen(),
    );
  }
}