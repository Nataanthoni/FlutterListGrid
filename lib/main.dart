import 'dart:math';

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
      body: Center(child: _buildCards()),
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

Widget _buildCards() => SizedBox(
      height: 520,
      child: Card(
          child: Column(
        children: [
          ListTile(
              title: Text("Something like a title here"),
              subtitle: Text("Another thing just like"),
              leading: Icon(Icons.home_repair_service_outlined)),
          Divider(),
          ListTile(
            title: Text(" Another awesome text here"),
            subtitle: Text("Always adding subtitle shall be here"),
            leading: Icon(Icons.favorite_outline),
          ),
          Divider(),
          ListTile(
            title: Text("Some Crazy title text here"),
            subtitle: Text("Anothe crazily text with subtitle shall be here"),
            leading: Icon(Icons.calculate_outlined),
          ),
          Divider(),
          ListTile(
            title: Text("Some awesome text here"),
            subtitle: Text("Anothe nice subtitle shall be here"),
            leading: Icon(Icons.ac_unit_outlined),
          ),
          Divider(),
          ListTile(
            title: Text("Important text here"),
            subtitle: Text("Anothe interesting subtitle shall be here"),
            leading: Icon(Icons.home_work_outlined),
          ),
          Divider(),
          ListTile(
            title: Text("Some bice ones text here"),
            subtitle: Text("Anothe nice subtitle shall be here"),
            leading: Icon(Icons.ac_unit_outlined),
          ),
        ],
      )),
    );
