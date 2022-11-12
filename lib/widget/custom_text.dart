import 'package:digital_edge_app/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {required this.labelText,
      required this.onSaved,
      required this.validator,
      this.keyboardType = TextInputType.text,
      this.initalValue = ''});

  final String labelText;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final String initalValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.8,
      height: Get.height * 0.13,
      child: TextFormField(
        enableSuggestions: false,
        maxLines: 3,
        minLines: 2,
        initialValue: initalValue,
        keyboardType: keyboardType,
        validator: validator,
        onSaved: onSaved,
        decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.primary, width: 2)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.primary, width: 2)),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.primary, width: 2)),
            errorBorder: const OutlineInputBorder(
                gapPadding: 10,
                borderSide: BorderSide(color: Colors.red, width: 2)),
            labelText: labelText,
            labelStyle:
                const TextStyle(color: Color.fromARGB(255, 46, 46, 59))),
      ),
    );
  }
}
