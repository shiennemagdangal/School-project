//Shienne Edward B. Magdangal

import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: Text(
            'List View',
            style: TextStyle(color: Colors.white),
          )),
      body: ListView(
        children: [
          Card(
              child: ListTile(
            leading: Icon(Icons.nature_people),
            title: Text('List tile 1'),
            subtitle: Text('subtitle List tile 1'),
            trailing: Icon(Icons.add_a_photo),
          )),
          Card(
              child: ListTile(
            leading: Icon(Icons.favorite),
            title: Text('List tile 2'),
            subtitle: Text('subtitle List tile 2'),
            trailing: Icon(Icons.access_alarm_outlined),
          )),
          Card(
              child: ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text('List tile 3'),
            subtitle: Text('subtitle List tile 3'),
            trailing: Icon(Icons.beach_access),
          )),
        ],
      ),
    ));
  }
}
