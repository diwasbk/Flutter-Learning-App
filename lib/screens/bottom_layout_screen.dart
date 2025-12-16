import 'package:flutter/material.dart';
import 'package:flutter_learning_app/screens/bottom_screens.dart/about_screen.dart';
import 'package:flutter_learning_app/screens/bottom_screens.dart/cart_screen.dart';
import 'package:flutter_learning_app/screens/bottom_screens.dart/dashboard_screen.dart';
import 'package:flutter_learning_app/screens/bottom_screens.dart/home_screen.dart';
import 'package:flutter_learning_app/screens/bottom_screens.dart/profile_screen.dart';

int _selectedIndex = 0;

List<Widget> lstBottomScreens = [
  const HomeScreen(),
  const AboutScreen(),
  const ProfileScreen(),
  const CartScreen(),
  const DashboardScreen(),
];

class BottomLayoutScreen extends StatefulWidget {
  const BottomLayoutScreen({super.key});

  @override
  State<BottomLayoutScreen> createState() => _BottomLayoutScreenState();
}

class _BottomLayoutScreenState extends State<BottomLayoutScreen> {
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
      body: lstBottomScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "Dashboard"),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => {
          setState(() {
            _selectedIndex = index;
          }),
        },
      ),
    );
  }
}
