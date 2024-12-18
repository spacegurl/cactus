import 'package:flutter/material.dart';
import 'horizontal_navigation.dart';
import 'signin.dart';
import 'signup.dart';
import 'plantlist.dart';
import 'plantdetails.dart';
import 'about.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plants App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SignInScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/plantlist': (context) => PlantListScreen(),
        '/plantdetails': (context) => const PlantDetailsScreen(),
        '/about': (context) => const AboutScreen(),
      },
    );
  }
}
