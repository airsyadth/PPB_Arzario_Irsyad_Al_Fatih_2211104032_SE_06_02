import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata Semarang',
      home: TouristRecommendationScreen(),
    );
  }
}

class TouristRecommendationScreen extends StatelessWidget {
  final List<TouristPlace> places = [
    TouristPlace(
      name: 'Sam Poo Kong',
      description:
          'Sam Poo Kong adalah klenteng bersejarah di Semarang yang terkait dengan Laksamana Cheng Ho dari Tiongkok. Tempat ini diyakini sebagai tempat peristirahatan Cheng Ho saat terdampar di Semarang pada abad ke-15.',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1SZFf6zXdT-Blz341JiN-IrADSoJ2bOjAeg&s',
    ),
    TouristPlace(
      name: 'Goa Kreo',
      description:
          'Goa Kreo adalah tempat wisata alam dengan gua alami yang dihuni oleh banyak monyet. Terletak di dekat Waduk Jatibarang, Goa Kreo menawarkan suasana sejuk dan pemandangan alam yang indah.',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNF5TKWYujshPCeGLYft3qgsOMgqvfXpQ9wA&s',
    ),
    TouristPlace(
      name: 'Museum Ranggawarsito',
      description:
          'Museum Rangga Warsito adalah museum yang menyimpan koleksi benda-benda sejarah, budaya, dan teknologi. Terletak di Semarang, museum ini menyajikan kisah perjalanan panjang dan perkembangan Kota Semarang.',
      imageUrl: 
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSg7skGN2M0QsCvSok1fKqYR4PEN04VI9Az4g&s',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 100, 
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Rekomendasi Wisata Semarang',
                style: TextStyle(fontSize: 16.0),
              ),
              centerTitle: true, 
              titlePadding: EdgeInsets.only(bottom: 16), 
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return _buildPlaceCard(context, places[index]);
              },
              childCount: places.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlaceCard(BuildContext context, TouristPlace place) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            place.imageUrl,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  place.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  place.description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 246, 29, 29),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Mengunjungi ${place.name}'),
                          ),
                        );
                      },
                      child: const Text('Kunjungi Tempat'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TouristPlace {
  final String name;
  final String description;
  final String imageUrl;

  TouristPlace({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}
