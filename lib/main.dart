import 'package:flutter/material.dart';
import 'package:hire_me/screens/home_screen.dart';

void main() => runApp(HireMeApp());

class HireMeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hire Me App ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
