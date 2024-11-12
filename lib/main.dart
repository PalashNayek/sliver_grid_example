import 'package:flutter/material.dart';
import 'package:sliver_grid_example/di/setup_locator.dart';
import 'package:sliver_grid_example/screens/SliverGridScreen.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SliverGrid Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SliverGridScreen(),
    );
  }
}
