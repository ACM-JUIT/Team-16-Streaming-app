import 'package:basecode/pages/home.dart';
import 'package:basecode/pages/login.dart';
import 'package:basecode/pages/signUp.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
     
    );
  }
}
