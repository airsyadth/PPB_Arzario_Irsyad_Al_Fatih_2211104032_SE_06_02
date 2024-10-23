import 'package:flutter/material.dart';

class MyPackage extends StatefulWidget {
  const MyPackage({super.key});

  @override
  State<MyPackage> createState() => _MyPackageState();
}

class _MyPackageState extends State<MyPackage> {
  String? selectedValue; // Declare selectedValue

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Package"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              obscureText: false,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "Masukan username",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: "Masukan password",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Ini ada Elevated Button",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
              ),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {},
              child: Text(
                "Ini adalah Text button",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            DropdownButton<String>(
              isExpanded: true,
              value: selectedValue,
              items: <String>['Opsi 1', 'Opsi 2', 'Opsi 3']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue = newValue; // Update the selected value
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
