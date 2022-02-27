import 'package:flutter/material.dart';

void main() {
  runApp(listView());
}

class listView extends StatelessWidget {
  const listView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text(
          'Using ListView',
            style: TextStyle(color: Colors.white),
          )),

        body: ListView(
          children: [
            Card(
              elevation: 5,
              child: ListTile(
              leading: Icon(Icons.collections_outlined),
              title: Text('List tile 1'),
              subtitle: Text('subtitle List tile 1'),
              trailing: Icon(Icons.add_photo_alternate),
              )),

            Card(
              elevation: 5,
              child: ListTile(
                leading: Icon(Icons.add_box_outlined),
              title: Text('List tile 2'),
              subtitle: Text('subtitle List tile 2'),
              trailing: Icon(Icons.home),
              )),

                  Card(
              elevation: 5,
              child: ListTile(
                leading: Icon(Icons.map_outlined),
              title: Text('List tile 3'),
              subtitle: Text('subtitle List tile 3'),
              trailing: Icon(Icons.my_location),
              )),

        ],),
     
          
          
    ));
  }
}
