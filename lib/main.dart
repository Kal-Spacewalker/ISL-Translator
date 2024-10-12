import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // Call this function to add data
  void addData() async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    await users.add({
      'full_name': 'John Doe',
      'age': 25,
    }).then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Test'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: addData, // Call addData when the button is pressed
          child: Text('Add User'),
        ),
      ),
    );
  }
}
