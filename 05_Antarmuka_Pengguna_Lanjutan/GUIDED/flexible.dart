import 'package:flutter/material.dart';

class FlexibleExpanded extends StatelessWidget {
  const FlexibleExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible vs Expanded"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Expanded",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 100,
                  color: Colors.green,
                ),
                Expanded( // Menggunakan Expanded di bagian pertama
                  child: Container(
                    height: 100,
                    color: Colors.lightGreen,
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      "This is an expanded widget, it forces the widget to take up all the remaining space.",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                const Icon(Icons.sentiment_satisfied_alt_outlined),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              "Flexible",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 100,
                  color: Colors.green,
                ),
                Flexible( // Menggunakan Flexible di bagian kedua
                  child: Container(
                    height: 100,
                    color: Colors.lightGreen,
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      "This is a flexible widget, it takes up the remaining space but can shrink if needed.",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                const Icon(Icons.sentiment_satisfied_alt_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
