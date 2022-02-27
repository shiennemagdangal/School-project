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
            backgroundColor: Colors.blue,
            title: Text('Colors'),
          ),
          body: Column(
            children: [
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      color: Colors.red,
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.orange,
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.orange,
                    )),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      color: Colors.red,
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.green,
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.purple,
                    )),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      color: Colors.blue,
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.blue,
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.purple,
                    )),
                  ],
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          )),
    );
  }
}
