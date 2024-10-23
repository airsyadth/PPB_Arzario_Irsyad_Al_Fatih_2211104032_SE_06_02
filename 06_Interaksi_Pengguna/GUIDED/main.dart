import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:praktikum_06/my_package.dart';
// import 'package:praktikum_06/my_tabbar.dart';
import 'package:praktikum_06/my_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        // textTheme: GoogleFonts.srirachaTextTheme(),
      ),
      home: MyNavbar(),
    );
  }
}