import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_large_text.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: AppLargeText(
        text: "sa",
      )),
    );
  }
}
