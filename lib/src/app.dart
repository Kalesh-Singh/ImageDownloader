// Import flutter helper library
import 'package:flutter/material.dart';

// Create a class that will be our custom widget
// This class must extend the StatelessWidget base class
class App extends StatelessWidget {
  // Must define a build method for the custom widget, which
  // returns the widgets that it will show.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

    return null;
  }
}
