import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("ListView & GridLayout"),
        backgroundColor: Colors.grey,
      ),
      body: Center(child: _buildList()),
    ));
  }
}

Widget _buildGrid() => GridView.extent(
    maxCrossAxisExtent: 150,
    padding: const EdgeInsets.all(5),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: _buildGridLayouts(15));

List<Container> _buildGridLayouts(int count) => List.generate(
    count,
    (index) =>
        Container(child: Image.network("https://picsum.photos/200/200")));

Widget _buildList() => ListView(
      children: [
        _tile("Sometihing important shall go here", "Another one",
            Icons.favorite_outline),
        _tile("Sometihing amazing goes here", "Another one",
            Icons.favorite_outline),
        _tile("Anotherone  here", "Another one", Icons.favorite_outline),
        _tile("Sometihing also here", "Another subtitle here",
            Icons.favorite_outline),
        _tile("Sometihing again here", "Another subtitle one",
            Icons.favorite_outline),
        _tile("Sometihing nice things", "Another subtitle shall go one",
            Icons.favorite_outline),
        _tile("Sometihing nice or great here", "Another s go one",
            Icons.favorite_outline),
        _tile("Sometihing nice or great here", "Another subtitle shall go one",
            Icons.favorite_outline),
        _tile("Sometihing here", "Another one", Icons.favorite_outline),
      ],
    );

ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.black,
      ),
    );
