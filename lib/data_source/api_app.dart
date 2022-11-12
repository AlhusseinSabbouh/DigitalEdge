import 'package:digital_edge_app/utils/app_color.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_app.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST("/api/login")
  Future<void> login(@Body() Map<String, dynamic> map);

  @GET("/api/user/1")
  Future<void> getUser();

  @POST("/api/user/register")
  Future<void> register(@Body() Map<String, dynamic> map);
}
