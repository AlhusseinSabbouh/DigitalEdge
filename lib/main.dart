import 'package:digital_edge_app/binding/global_binding.dart';
import 'package:digital_edge_app/view/home_view.dart';
import 'package:digital_edge_app/view/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: GlobalBinding(),
      initialRoute: "/welcome",
      getPages: [
        GetPage(name: "/welcome", page: () => Center(child: WelcomeView())),
      ],
    );
  }
}

class GlobalBindings {}
