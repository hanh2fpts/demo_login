import 'package:demo_login/injection/injection.dart';
import 'package:demo_login/utils/app_config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioModule {
  DioModule._();
  static const String dioInstanceName = 'dioInstance';
  static final GetIt _injection = Injection.instance;
  static void setUp() {
    _setupDio();
  }

  static void _setupDio() {
    _injection.registerLazySingletonAsync<Dio>(
      () async {
        const storage = FlutterSecureStorage();
        var token = await storage.read(key: AppConfig.tokenKey);
        final Dio dio = Dio(BaseOptions(
            baseUrl: AppConfig.baseUrl,
            followRedirects: false,
            validateStatus: (status) => true,
            headers: {'Authorization': token},
            contentType: Headers.formUrlEncodedContentType));
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
      },
      instanceName: dioInstanceName,
    );
  }
}
