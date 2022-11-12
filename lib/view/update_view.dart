import 'package:digital_edge_app/utils/app_color.dart';
import 'package:digital_edge_app/widget/custom_button.dart';
import 'package:digital_edge_app/widget/custom_text.dart';
import 'package:digital_edge_app/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateView extends StatelessWidget {
  const UpdateView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Info"),
        centerTitle: true,
        backgroundColor: AppColor.primary,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Form(
                  child: Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  CustomTextFormField(
                      labelText: "name", onSaved: (x) {}, validator: (x) {}),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  CustomTextFormField(
                      labelText: "number", onSaved: (x) {}, validator: (x) {}),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  CustomTextFormField(
                      labelText: "email", onSaved: (x) {}, validator: (x) {}),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                ],
              )),
              CustomButton(
                  onPressed: () {},
                  textData: "Save",
                  textColors: Colors.white,
                  backGroundColor: AppColor.primary)
            ],
          ),
        ),
      ),
    );
  }
}
