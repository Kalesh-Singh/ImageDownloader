import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Lets see images!'),
      ),
      floatingActionButton: FloatingActionButton(
        // Can use any icon from https://material.io/tools/icons
        child: Icon(Icons.add),
        onPressed: () {
          print('Hello!');
        },
      ),
    ),
  );

  runApp(app);
}

