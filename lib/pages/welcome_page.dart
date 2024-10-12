import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to GestureTalk'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'GestureTalk - ISL Translation App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Navigate to Sign Up Page
                Navigator.pushNamed(context, '/signup');
              },
              child: Text('Sign Up'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Login Page
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Log In'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Navigate to Home Page without logging in
                Navigator.pushNamed(context, '/home');
              },
              child: Text('Continue as Guest'),
            ),
          ],
        ),
      ),
    );
  }
}
