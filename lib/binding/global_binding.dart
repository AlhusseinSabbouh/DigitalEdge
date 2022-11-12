import 'package:digital_edge_app/config/dio_factory.dart';
import 'package:digital_edge_app/controller/home_controller.dart';
import 'package:digital_edge_app/controller/register_controller.dart';
import 'package:digital_edge_app/data_source/api_app.dart';
import 'package:digital_edge_app/data_source/remote_data_source.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class GlobalBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => RegisterController(), fenix: true);
  }
}
