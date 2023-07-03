import 'package:demo_login/injection/injection.dart';
import 'package:demo_login/injection/modules/dio_module.dart';
import 'package:demo_login/services/stock_gateway_service.dart';

class ServiceModule {
  ServiceModule._();
  static void init() {
    final injection = Injection.instance;
    injection.registerFactory<StockGatewaySerivce>(
        () => StockGatewaySerivce(injection(instanceName: DioModule.dioInstanceName)));
  }
}
