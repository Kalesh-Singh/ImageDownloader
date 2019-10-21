import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;

  void fetchImage() {
    counter += 1
    get('https://jsonplaceholder.typicode.com/photos/1');
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
