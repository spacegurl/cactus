import 'package:cactus/src/signin.dart';
import 'package:cactus/src/signinweb.dart';
import 'package:cactus/src/signup.dart';
import 'package:cactus/src/signupweb.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;


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
      home: getPlatformSpecificPage()
    );
  }

  Widget getPlatformSpecificPage() {
    if (kIsWeb) return SignUpScreenWeb();
    if (Platform.isAndroid | Platform.isIOS) return SignUpScreen();
    return SignUpScreen();
  }
}