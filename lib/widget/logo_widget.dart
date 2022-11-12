import 'package:digital_edge_app/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({required this.textData});

  final String textData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/ali_fouad_logo.png",
            width: Get.height * 0.3, height: Get.width * 0.3),
        const SizedBox(
          height: 20,
        ),
        Text(
          textData,
          style: const TextStyle(color: AppColor.primary),
        )
      ],
    );
  }
}
