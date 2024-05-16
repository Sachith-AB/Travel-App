import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  Color? color;
  ResponsiveButton(
      {super.key, this.width, this.isResponsive = false, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: const Row(children: [
        Text(
          "Click here",
          style: TextStyle(color: Colors.white),
        )
      ]),
    );
  }
}
