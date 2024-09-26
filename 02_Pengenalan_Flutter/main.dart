import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LP_02',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('02_Pengenalan_Flutter'),
          backgroundColor: Colors.greenAccent,
        ),
        body: Container(
          color: Colors.lightBlue[50],
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  'Biodata Diri',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.brown[700],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.amber[100],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.amber, width: 2),
                ),
                child: Row(
                  children: [
                    Text(
                      'Nama : ',
                      style: TextStyle(fontSize: 18, color: Colors.brown[700]),
                    ),
                    Text(
                      'Arzario Irsyad Al Fatih',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.brown[700],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.amber[100],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.amber, width: 2),
                ),
                child: Row(
                  children: [
                    Text(
                      'NIM : ',
                      style: TextStyle(fontSize: 18, color: Colors.brown[700]),
                    ),
                    Text(
                      '2211104032',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.brown[700],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.amber[100],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.amber, width: 2),
                ),
                child: Row(
                  children: [
                    Text(
                      'Jurusan : ',
                      style: TextStyle(fontSize: 18, color: Colors.brown[700]),
                    ),
                    Text(
                      'Rekayasa Perangkat Lunak',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.brown[700],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.amber[100],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.amber, width: 2),
                ),
                child: Row(
                  children: [
                    Text(
                      'Hobi : Membaca Alkitab, Bersholawat',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.brown[700],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.amber, width: 2),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Hubungi Saya',
                    style: TextStyle(fontSize: 18, color: Colors.brown[700]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

