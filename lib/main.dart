import 'package:flutter/material.dart';
import 'package:woolyyarngo/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WoolyYarnGo!',
      theme: ThemeData(primaryColor: Colors.amber[50], canvasColor: Colors.red[300]),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}