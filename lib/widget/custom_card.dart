import 'package:digital_edge_app/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtom2 extends StatelessWidget {
  CustomButtom2({required this.textData, required this.onTap});
  final String textData;
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        child: GestureDetector(
          onTap: onTap,
          child: Card(
            child: Container(
              margin: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      textData,
                      style: TextStyle(color: AppColor.primary),
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
