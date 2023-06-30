import 'package:demo_login/services/stock_gateway_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final Dio dio = Dio(BaseOptions(baseUrl: 'http://eztrade4.fpts.com.vn/sg/api/gateway/v1/'));
  final StockGatewaySerivce stockGatewaySerivce = StockGatewaySerivce(dio);

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
    final response = await stockGatewaySerivce.postAsync('account/lohin',params);
    //print(response.data);
    expect(response.data, isNotEmpty);
  });
  test('test api report', () async {
    Map<String, dynamic> params = {'exchange': 'ALL'};
    final response = await stockGatewaySerivce.getAsync('report/marliststockblance', params);
    print(response.data);
    expect(response.data, isNotEmpty);
  });
}
