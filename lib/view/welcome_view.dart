import 'package:digital_edge_app/utils/app_color.dart';
import 'package:digital_edge_app/view/login_view.dart';
import 'package:digital_edge_app/view/register_view.dart';
import 'package:digital_edge_app/widget/custom_button.dart';
import 'package:digital_edge_app/widget/logo_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class WelcomeView extends StatelessWidget {
  WelcomeView();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.1,
              ),
              LogoWidget(textData: "Welcome to the app"),
              SizedBox(
                height: Get.height * 0.3,
              ),
              CustomButton(
                  onPressed: () {
                    Get.offAll(LoginView());
                  },
                  textData: "Login",
                  textColors: Colors.white,
                  backGroundColor: AppColor.primary),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                  onPressed: () {
                    Get.offAll(RegisterView());
                  },
                  textData: "Register",
                  textColors: AppColor.primary,
                  backGroundColor: Colors.white),
            ],
          ),
        ),
      ),
    ));
  }
}
