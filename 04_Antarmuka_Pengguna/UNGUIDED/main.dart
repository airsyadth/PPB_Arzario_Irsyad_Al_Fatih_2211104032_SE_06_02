import 'package:flutter/material.dart';

void main() {
  runApp(WisataApp());
}

class WisataApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Rekomendasi Wisata',
              style: TextStyle(color: Colors.black),
            ),
          ),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: WisataListView(),
      ),
    );
  }
}

class WisataListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        WisataCard(
          name: 'Klenteng Sam Poo Kong',
          imageUrl:
              'https://ik.imagekit.io/tvlk/blog/2023/01/Klenteng-Sam-Poo-Kong-Traveloka-Xperience.jpg',
          description:
              'Sam Poo Kong adalah klenteng bersejarah di Semarang yang terkait dengan Laksamana Cheng Ho dari Tiongkok. Tempat ini diyakini sebagai tempat peristirahatan Cheng Ho saat terdampar di Semarang pada abad ke-15.',
        ),
        WisataCard(
          name: 'Goa Kreo',
          imageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/3/39/Goa_Kreo_Semarang.jpg',
          description:
              'Goa Kreo adalah tempat wisata alam dengan gua alami yang dihuni oleh banyak monyet. Terletak di dekat Waduk Jatibarang, Goa Kreo menawarkan suasana sejuk dan pemandangan alam yang indah.',
        ),
        WisataCard(
          name: 'Museum Rangga Warsito',
          imageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/9/9b/Museum_Rangga_Warsito.jpg',
          description:
              'Museum Rangga Warsito adalah museum yang menyimpan koleksi benda-benda sejarah, budaya, dan teknologi. Terletak di Semarang, museum ini menyajikan kisah perjalanan panjang dan perkembangan Kota Semarang.',
        ),
      ],
    );
  }
}

class WisataCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String description;

  WisataCard({
    required this.name,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Menggunakan Container untuk mengatur ukuran dan penataan gambar
          Container(
            width: double.infinity,
            height: 200,  // Ukuran tinggi gambar yang tetap
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,  // Gambar tetap proporsional dan tidak terdistorsi
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              description,
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                print('Kunjungi $name ditekan');
              },
              child: Text('Kunjungi Sekarang'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
