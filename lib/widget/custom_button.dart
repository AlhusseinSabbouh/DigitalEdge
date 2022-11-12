import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {required this.onPressed,
      required this.textData,
      required this.textColors,
      required this.backGroundColor});

  final void Function()? onPressed;
  final String textData;
  final Color textColors;
  final Color backGroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.8,
      height: Get.height * 0.1,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: backGroundColor),
        child: Text(
          textData,
          style: TextStyle(color: textColors),
        ),
      ),
    );
  }
}
