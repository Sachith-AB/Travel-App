import 'package:flutter/material.dart';
import 'package:travel_app/pages/Home_Page.dart';
import 'package:travel_app/pages/detail_page.dart';
import 'platform.dart';

void main() {
  runApp(const MyApp());
  try {
    int result = callNativeFunction(42);
    print('Result: $result');
  } catch (e) {
    print(e);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "travelApp",
        debugShowCheckedModeBanner: false,
        home: DetailPage());
  }
}
