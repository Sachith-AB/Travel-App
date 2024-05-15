import 'package:flutter/material.dart';
import 'package:travel_app/pages/welcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "travelApp",
        debugShowCheckedModeBanner: false,
        home: WelcomePage());
  }
}
