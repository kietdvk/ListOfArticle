import 'package:flutter/material.dart';
import 'package:flutter_listof/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Of Article',
      home: Homepage(),
    );
  }
}
