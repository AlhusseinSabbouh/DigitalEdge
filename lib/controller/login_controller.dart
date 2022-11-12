import 'package:get/get.dart';

class LoginController extends GetxController {
  String _email = "";
  String _password = "";

  set email(String email) => _email = email;
  set password(String password) => _password = password;

  String get email => _email;
  String get password => _password;
}
