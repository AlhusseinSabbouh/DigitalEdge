import 'package:digital_edge_app/controller/register_controller.dart';
import 'package:digital_edge_app/utils/app_color.dart';
import 'package:digital_edge_app/view/home_view.dart';
import 'package:digital_edge_app/view/login_view.dart';
import 'package:digital_edge_app/widget/custom_button.dart';
import 'package:digital_edge_app/widget/custom_text.dart';
import 'package:digital_edge_app/widget/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});
  RegisterController controller = Get.find<RegisterController>();
  GlobalKey<FormState> _formDataKey = GlobalKey<FormState>();

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
                height: Get.height * 0.06,
              ),
              LogoWidget(textData: "Register"),
              SizedBox(
                height: Get.height * 0.05,
              ),
              CustomTextFormField(
                  labelText: "Full Name",
                  onSaved: (name) {
                    controller.name = name!;
                  },
                  validator: (value) {
                    if (value == null || value == "") {
                      return "enter your name";
                    }
                  }),
              SizedBox(
                height: Get.height * 0.01,
              ),
              CustomTextFormField(
                  labelText: "Number",
                  onSaved: (number) {
                    controller.phone = number!;
                  },
                  validator: (value) {
                    if (value == null || value == "") {
                      return "enter your number";
                    }
                  }),
              SizedBox(
                height: Get.height * 0.01,
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
              CustomTextFormField(
                  labelText: "Confirm Password",
                  onSaved: (confirm_pass) {
                    controller.password_confirm = confirm_pass!;
                  },
                  validator: (value) {
                    if (value == null || value == "") {
                      return "rewrite password";
                    }
                  }),
              SizedBox(
                height: Get.height * 0.01,
              ),
              CustomButton(
                  onPressed: () {
                    if (_formDataKey.currentState!.validate() == true) {
                      _formDataKey.currentState!.save();
                      controller.register();
                      Get.off(HomeView());
                    }
                  },
                  textData: "Register",
                  textColors: Colors.white,
                  backGroundColor: AppColor.primary),
              SizedBox(
                height: Get.height * 0.1,
              ),
              TextButton(
                  onPressed: () {
                    Get.offAll(LoginView());
                  },
                  child: Text("need to login"))
            ],
          ),
        )),
      ),
    );
  }
}
