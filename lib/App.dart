import 'package:aqi/widgets/ExpandableListView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'AQI',
      home:  Scaffold(
         body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return new ExpandableListView(title: "Title $index");
        },
        itemCount: 5,
      ),
    ));
  }
}
