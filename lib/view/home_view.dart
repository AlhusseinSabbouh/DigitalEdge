import 'package:digital_edge_app/controller/home_controller.dart';
import 'package:digital_edge_app/utils/app_color.dart';
import 'package:digital_edge_app/view/update_view.dart';
import 'package:digital_edge_app/view/welcome_view.dart';
import 'package:digital_edge_app/widget/custom_card.dart';
import 'package:digital_edge_app/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeView();
  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        backgroundColor: AppColor.primary,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomTextField(icon: Icons.person, textData: "test 01 t"),
            CustomTextField(
                icon: Icons.mobile_friendly_rounded,
                textData: "+971 559944652"),
            CustomTextField(icon: Icons.message, textData: "test@test.test"),
            CustomButtom2(
                textData: "Update Information",
                onTap: () {
                  Get.to(() => UpdateView());
                }),
            CustomButtom2(textData: "Change Password", onTap: () {}),
            CustomButtom2(textData: "Delete Account", onTap: () {}),
            CustomButtom2(
                textData: "Logout",
                onTap: () {
                  Get.offAll(WelcomeView());
                }),
          ],
        ),
      ),
    );
  }
}
