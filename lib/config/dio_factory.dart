import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String applicationJson = "application/json";
const String contentType = "content-type";
const String accept = "accept";
const String authorization = "authorization";
const String dafaultLanguage = "language";

class DioFactory {
  // final AppPreferences _appPreferences;
  // DioFactory(this._appPreferences);

  Future<Dio> getDio() async {
    Dio dio = Dio();
    // String language = await _appPreferences.getAppLanguage();
    Map<String, String> headers = {
      "content-type": applicationJson,
      accept: applicationJson,
      authorization:
          "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5NjAxNDM5Ni0wYzExLTRiYmYtYThlMy04ZTdmNTQ5ZmJjNWUiLCJqdGkiOiIzMDI2MzQ5MDMxMTczMzNmN2Y3MTMxODg1Y2YyMDFiYmU3NGYxOTJlOGVhZDYzZDQ0ZmIwYzBkM2E1ODZjYTNhZGZjNWQyYWUzZGM5Njk0MyIsImlhdCI6MTY0OTUwOTE3MS4xMjE3NjQsIm5iZiI6MTY0OTUwOTE3MS4xMjE3NzEsImV4cCI6MTY4MTA0NTE3MS4xMDQ0OCwic3ViIjoidXNlckBjaXR5LWNhcnMuYWUiLCJzY29wZXMiOltdfQ.Ytg4sI5mMA6cBbYBRgeg5vYoaUgI-G1yOj1Qp9-fJxsKQhrrPUJRg02PwYW9865XyCUnWkq1ZYnOiJZXd_3P6drli5mOwo2YqAL8KupnFG8vsvYJofzv1O8njYS8OnKqid974JVgS-RHS3RjZcY8nwp72nreXhqC7_oVzF7FmTxZOqOncOa5p8X5W41GettkMxhYuZk8qpAaQEOvSTo8NWnOWHouVGwJdKHyxCmzn9hjFZAuezYk8puhmEg_zpXP5gXjosN-LVrwbwE3Tqb7NolZMldEaPgXvsO9Q_wABZXAqrD4ImzdRpSfUR3ecgKDvuh7VUAcBGtmE6on1fWQxNeBp9AzTXpVjW5srwizSEaPWhwokVeF1OHrSXcJEJWwHCZhETo6KKDiqG1_0n26ItL8i-iymXjTO4H4m155zFEA8jXp62bGUqEh6IJKuQ5i0oVSCGdGqGtudNght6YUlSv2EDOBEXbFo3AqhOfMC0NNvmiTIrWWcty3svMcxO0bd1ZwJxpET8QF6bUTEMWBrD1izFucqpUx1WJReQnB7V8FuFcLRk_evH6ikBMmmHI2PC8Bvf3YMAixsC3ayxLiJy8goyJsK9N7AGZYmNWOJWaHCWZUtBoS_48tN13ouPWigjSj1FjYaIvjNLPfyty_df9tfJjomrWOWlg1Lxe4suY", //TODO get token from prefs
      dafaultLanguage: "en"
    };
    const int timeout = 60000;
    dio.options = BaseOptions(
      baseUrl: "http://testapi.alifouad91.com",
      headers: headers,
      receiveTimeout: timeout,
      sendTimeout: timeout,
    );

    if (!kReleaseMode) {
      dio.interceptors.add(PrettyDioLogger(
          requestBody: true,
          requestHeader: true,
          responseBody: true,
          error: true));
    }

    return dio;
  }
}
