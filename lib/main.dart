import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';


void main() {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HiDocDrApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
