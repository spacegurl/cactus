import 'package:cactus/src/about.dart';
import 'package:cactus/src/plantdetails.dart';
import 'package:cactus/src/plantlist.dart';
import 'package:cactus/src/signin.dart';
import 'package:cactus/src/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AboutScreen()
    );
  }
}