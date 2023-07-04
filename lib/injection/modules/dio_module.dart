import 'package:demo_login/injection/injection.dart';
import 'package:demo_login/utils/app_config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioModule {
  DioModule._();
  static const String dioInstanceName = 'dioInstance';
  static void setupDio() {
    final injection = Injection.instance;
    injection.registerFactory<Dio>(() {
      final Dio dio = Dio();
      getToken().then((value) {
        dio.options.baseUrl = AppConfig.baseUrl;
        dio.options.headers = {'Authorization': value};
        dio.options.followRedirects = false;
        dio.options.validateStatus = (status) => true;
        dio.options.contentType = Headers.formUrlEncodedContentType;
      });
      if (!kReleaseMode) {
        dio.interceptors.add(PrettyDioLogger(
          responseHeader: true,
          responseBody: true,
          requestHeader: false,
          requestBody: false,
          request: false,
        ));
      }
      return dio;
    }, instanceName: dioInstanceName);
  }

  static Future<String?> getToken() async {
    const storage = FlutterSecureStorage();
    final token = await storage.read(key: AppConfig.tokenKey);
    var userName = await storage.read(key: AppConfig.userName);
    print('token ----------- $token');
    print('useName ----------- $userName');
    return token;
  }
}
