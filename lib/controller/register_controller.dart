// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:digital_edge_app/config/dio_factory.dart';
import 'package:digital_edge_app/data_source/api_app.dart';
import 'package:digital_edge_app/data_source/remote_data_source.dart';
import 'package:digital_edge_app/model.dart/request_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  String _name = "";
  String _email = "";
  String _phone = "";
  String _country_code = "";
  String _password_confirm = "";
  String _password = "";

  set name(String name) => _name = name;
  set email(String email) => _email = email;
  set phone(String phone) => _phone = phone;
  set country_code(String country_code) => _country_code = country_code;
  set password_confirm(String password_confirm) =>
      _password_confirm = password_confirm;
  set password(String password) => _password = password;

  String get name => _name;
  String get email => _email;
  String get phone => _phone;
  String get country_code => _country_code;
  String get password_confirm => _password_confirm;
  String get password => _password;

  void register() async {
    RegisterRequestBody reg = RegisterRequestBody(
        name: _name,
        email: _email,
        phone: _phone,
        country_code: _country_code,
        password_confirm: _password_confirm,
        password: _password);
    DioFactory d = DioFactory();
    Dio dio = await d.getDio();
    await RemoteDataSourceImpl(AppServiceClient(dio)).register(reg.toMap());
  }

  void login() async {
    LoginRequestBody to = LoginRequestBody(email: _email, password: _password);
    DioFactory d = DioFactory();
    Dio dio = await d.getDio();
    await RemoteDataSourceImpl(AppServiceClient(dio)).login(to.toMap());
  }
}
