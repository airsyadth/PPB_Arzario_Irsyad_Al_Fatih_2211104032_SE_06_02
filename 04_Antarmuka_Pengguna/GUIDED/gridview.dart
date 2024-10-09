import 'package:flutter/material.dart';

class RioGrid extends StatefulWidget {
  const RioGrid({super.key});

  @override
  State<RioGrid> createState() => _RioGridState();
}

class _RioGridState extends State<RioGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prakrikum 4"),
        backgroundColor: Colors.blueAccent[700],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text("GridView 2"),
                Icon(Icons.ac_unit),
              ],
            ),
            color: Colors.blueGrey,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text("Grid view 2"),  
            color: Colors.amberAccent,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text("Grid view 3"),  
            color: Colors.amberAccent,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text("Grid view 4"),  
            color: Colors.amberAccent,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text("Grid view 5"),  
            color: Colors.amberAccent,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text("Grid view 6"),  
            color: Colors.amberAccent,
          ),
        ],
      ),
    );
  }
}
