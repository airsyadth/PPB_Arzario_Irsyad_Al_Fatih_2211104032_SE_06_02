import 'package:flutter/material.dart';
import 'package:praktikum_04/gridview.dart';
// import 'package:praktikum_04/listview.dart';
// import 'package:praktikum_04/stack.dart';

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
      home: const RioGrid(),
      // home: const RioList(),
      // home: const RioStack(),
    );
  }
}
