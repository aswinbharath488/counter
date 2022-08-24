import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter.dart';
import 'package:flutter_application_1/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.pink),
      debugShowCheckedModeBanner: false,
      home: homescreen(),
    );
  }
}
