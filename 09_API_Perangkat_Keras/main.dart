import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Memilih Gambar'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.image_outlined,
                size: 80,
                color: Colors.blue,
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.camera_alt),
                label: Text('Camera'),
              ),
              SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.photo),
                label: Text('Gallery'),
              ),
              SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.delete),
                label: Text('Hapus Gambar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
