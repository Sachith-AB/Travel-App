import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_text.dart';

// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  double height;
  double width;
  final Color borderColor;
  String? text;
  IconData? icon;
  bool? isIcon;

  AppButton({
    super.key,
    this.text = "Hi",
    this.icon,
    this.isIcon = false,
    required this.color,
    required this.backgroundColor,
    required this.borderColor,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(15),
          color: backgroundColor,
          border: Border.all(color: borderColor),
        ),
        child: isIcon == false
            ? Center(
                child: AppText(
                  text: text!,
                  color: color,
                  fontWeight: FontWeight.w600,
                ),
              )
            : Center(
                child: Icon(icon, color: color),
              ));
  }
}
