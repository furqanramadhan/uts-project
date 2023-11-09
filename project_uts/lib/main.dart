import 'package:flutter/material.dart';
import 'package:project_uts/register_pages.dart';
import 'login_pages.dart';
import 'home_pages.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder(
        // Simulate a delay of 2 seconds
        future: Future.delayed(Duration(seconds: 2)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SplashScreen(); // Show splash screen during the delay
          } else {
            // Change this line to navigate to HomePage after login
            return HomePage(); // Move to login page after the delay
          }
        },
      ),
    );
  }
}
