import 'package:flutter/material.dart';
import 'package:praktikum_12/picker.dart';

void main() async {
  runApp(const MyApp());
}

String? token;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Map',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const MyApp(),
    );
  }
}