//Shienne Edward B. Magdangal
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
          backgroundColor: Colors.blueAccent,
          title: Text('Tourist Attractions'),
        ),
        body: myListView(),
      ),
    );
  }
}

myListView() {
  var listView = ListView(
    children: [
      ListTile(
        leading: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 44,
            minHeight: 44,
            maxWidth: 64,
            maxHeight: 64,
          ),
          child: Image.asset(
            'Assets/Great-Wall-of-China.jpg',
            fit: BoxFit.cover,
          ),
        ),
        title: Text('Great Wall of China'),
        subtitle:
            Text('Huairou District, China             Population: 373,000'),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
      Divider(
        height: 20,
        thickness: 2,
        indent: 20,
        endIndent: 20,
      ),
      ListTile(
        leading: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 44,
            minHeight: 44,
            maxWidth: 64,
            maxHeight: 64,
          ),
          child: Image.asset(
            'Assets/eiffel-tower.jpg',
            fit: BoxFit.cover,
          ),
        ),
        title: Text('Eiffel Tower'),
        subtitle: Text('7th arrondissement,Paris,France   Population:2.1m'),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
      Divider(
        height: 20,
        thickness: 2,
        indent: 20,
        endIndent: 20,
      ),
      ListTile(
        leading: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 44,
            minHeight: 44,
            maxWidth: 64,
            maxHeight: 64,
          ),
          child: Image.asset(
            'Assets/egyptian-pyramids.jpg',
            fit: BoxFit.cover,
          ),
        ),
        title: Text('Egyptian pyramids'),
        subtitle: Text('Giza City,Giza,Greater Cairo,Egypt   Population:20.9m'),
        trailing: Icon(Icons.arrow_forward_ios),
      )
    ],
  );
  return listView;
}
