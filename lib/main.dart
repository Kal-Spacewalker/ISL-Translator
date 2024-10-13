import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'pages/login_page.dart'; // Import the login page
import 'pages/welcome_page.dart'; // Import the welcome page
import 'pages/signup_page.dart'; // Import the sign-up page
import 'pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GestureTalk',
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(), // Welcome Page
        '/login': (context) => LoginPage(), // Login Page
        '/signup': (context) => SignUpPage(), // Sign-Up Page
        '/home': (context) => HomePage(),  // HomePage
        // Add other routes as needed
      },
    );
  }
}
