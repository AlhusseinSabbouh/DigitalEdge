import 'package:digital_edge_app/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.icon, required this.textData});
  final String textData;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        child: TextField(
          enabled: false,
          decoration: InputDecoration(
              border: InputBorder.none,
              label: Text(textData),
              prefixIcon: Icon(
                icon,
                color: AppColor.primary,
              )),
        ),
      ),
    );
  }
}
