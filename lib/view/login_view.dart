import 'package:digital_edge_app/controller/register_controller.dart';
import 'package:digital_edge_app/utils/app_color.dart';
import 'package:digital_edge_app/view/home_view.dart';
import 'package:digital_edge_app/view/register_view.dart';
import 'package:digital_edge_app/widget/custom_button.dart';
import 'package:digital_edge_app/widget/custom_text.dart';
import 'package:digital_edge_app/widget/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  LoginView();
  GlobalKey<FormState> _formDataKey = GlobalKey<FormState>();
  RegisterController controller = Get.find<RegisterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            child: Form(
          key: _formDataKey,
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.1,
              ),
              LogoWidget(textData: "Login"),
              SizedBox(
                height: Get.height * 0.1,
              ),
              CustomTextFormField(
                  labelText: "Email Address",
                  onSaved: (email) {
                    controller.email = email!;
                  },
                  validator: (value) {
                    if (value == null || value == "") {
                      return "enter your email";
                    }
                  }),
              SizedBox(
                height: Get.height * 0.01,
              ),
              CustomTextFormField(
                  labelText: "Password",
                  onSaved: (password) {
                    controller.password = password!;
                  },
                  validator: (value) {
                    if (value == null || value == "") {
                      return "enter your password";
                    }
                  }),
              SizedBox(
                height: Get.height * 0.01,
              ),
              CustomButton(
                  onPressed: () {
                    if (_formDataKey.currentState!.validate() == true) {
                      _formDataKey.currentState!.save();
                      controller.login();
                      Get.offAll(HomeView());
                    }
                  },
                  textData: "Login",
                  textColors: Colors.white,
                  backGroundColor: AppColor.primary),
              SizedBox(
                height: Get.height * 0.1,
              ),
              TextButton(
                  onPressed: () {
                    Get.offAll(RegisterView());
                  },
                  child: Text("Dont have then register"))
            ],
          ),
        )),
      ),
    );
  }
}
