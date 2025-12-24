import 'package:flutter/material.dart';
import 'package:flutter_learning_app/models/user.dart';
import 'package:flutter_learning_app/shared_pref/shared_pref.dart';

class SharedPrefScreen extends StatefulWidget {
  const SharedPrefScreen({super.key});

  @override
  State<SharedPrefScreen> createState() => _SharedPrefScreenState();
}

class _SharedPrefScreenState extends State<SharedPrefScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Shared Preference',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            SizedBox(height: 15),
            TextFormField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  SharedPref sharedPref = SharedPref();

                  var user = User(
                    username: usernameController.text.trim(),
                    password: passwordController.text.trim(),
                  );

                  // Add to the shared preferences
                  sharedPref.addUser(user);

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'User Added',
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.deepPurpleAccent,
                    ),
                  );
                },
                child: const Text('Add'),
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () async {
                  SharedPref sharedPref = SharedPref();
                  user = await sharedPref.getUser();
                  setState(() {});
                },
                child: const Text('Get data'),
              ),
            ),
            SizedBox(height: 15),
            if (user != null)
              Text(
                'Username: ${user!.username}, Password: ${user!.password}',
                style: TextStyle(color: Colors.pinkAccent),
              ),
          ],
        ),
      ),
    );
  }
}
