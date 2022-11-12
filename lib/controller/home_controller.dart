import 'package:get/get.dart';

class HomeController extends GetxController {
  var name = "home page".obs;

  void changeTheText(String x) => name.value = x;

  set toto(String x) => name.value = x;
}
