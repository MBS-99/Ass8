import 'package:ass07/screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:ass07/screens/Home.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
