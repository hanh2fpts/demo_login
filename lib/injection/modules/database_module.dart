import 'package:demo_login/injection/injection.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class DatabaseModule {
  DatabaseModule._();
  static void init() async {
    final injection = Injection.instance;
    const storage = FlutterSecureStorage();
    //await storage.read(key: AppConfig.tokenKey);
    injection.registerSingletonAsync<FlutterSecureStorage>(() async => storage);
  }
}
