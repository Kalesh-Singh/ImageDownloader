import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Lets see images!'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('+'),
        onPressed: () {
          print('Hello!');
        },
      ),
    ),
  );

  runApp(app);
}
