import 'package:demo_login/model/account_model.dart';
import 'package:demo_login/services/stock_gateway_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final Dio dio = Dio(BaseOptions(baseUrl: 'http://eztrade4.fpts.com.vn'));
  final StockGatewaySerivce stockGatewaySerivce = StockGatewaySerivce(dio);
  String token = '';
  test('test api login', () async {
    Map<String, dynamic> params = {
      "LoginName": '058C008899',
      "Password": 'fpts1234',
      "IsMobile": "Y",
      "Referer": "EzMobileTrading",
      "BrowserName": "EzMobileTrading",
      "Source": "2",
      "UserAgent": '',
      "IpClient": '0.0.0.0'
    };
    final response = await stockGatewaySerivce.postAsync('account/login', params);
    token = AccountModel.fromJson(response.data).jwt!;
    expect(response.data, isNotEmpty);
  });
  test('test api report', () async {
    dio.options.headers = {'Authorization': token};
    Map<String, dynamic> params = {'exchange': 'ALL'};
    final response = await stockGatewaySerivce.getAsync('report/marliststockblance', params);
    expect(response.data, isNotEmpty);
  });
  test('test api lay danh muc mac dinh', () async {
    Map<String, dynamic> params = {};
    final response = await stockGatewaySerivce.getAsync('s5g/vnx', params);
    expect(response.data, isNotEmpty);
  });
}
