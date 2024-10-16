import 'package:flutter/material.dart';

class Custom extends StatelessWidget {
  const Custom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom"),
        backgroundColor: Colors.amber,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Custom Demo'),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.cyan[100 * (index % 9)],
                  child: Column(
                    children: [
                    Icon(Icons.access_alarm, size: 15),
                    Text('Grid item $index'),
                  ],
                  ),
                );
              },
              childCount: 20,
            ),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 4,
            ),
          ),
        ],
      ),
    );
  }
}