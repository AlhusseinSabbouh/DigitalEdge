import 'package:digital_edge_app/data_source/api_app.dart';
import 'package:get/get.dart';

abstract class RemoteDataSource {
  Future<void> register(Map<String, dynamic> register);
  Future<void> login(Map<String, dynamic> login);
}

class RemoteDataSourceImpl extends GetxController implements RemoteDataSource {
  final AppServiceClient _appServiceClient;

  RemoteDataSourceImpl(this._appServiceClient);

  @override
  Future<void> register(Map<String, dynamic> register) async {
    return await _appServiceClient.register(register);
  }

  @override
  Future<void> login(Map<String, dynamic> login) async {
    return await _appServiceClient.login(login);
  }
}
