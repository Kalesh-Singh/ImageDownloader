import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'dart:convert';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;

  void fetchImage() async {
    counter += 1;
    var response = await get('https://jsonplaceholder.typicode.com/photos/1');
    var imageModel = ImageModel.fromJson(json.decode(response.body));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lets see images!'),
        ),
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          // Can use any icon from https://material.io/tools/icons
          child: Icon(Icons.add),
          onPressed: fetchImage,
        ),
      ),
    );

    return null;
  }
}
