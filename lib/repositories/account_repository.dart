import 'package:demo_login/model/account_model.dart';
import 'package:demo_login/repositories/account_repository_type.dart';
import 'package:demo_login/services/stock_gateway_service.dart';

class AccountRepository implements AccountRepositoryType {
  AccountRepository({required StockGatewaySerivce stockGatewaySerivce})
      : _stockGatewaySerivce = stockGatewaySerivce;
  late final StockGatewaySerivce _stockGatewaySerivce;
  @override
  Future<AccountModel?> checkPasswordTransaction(String clientCode, String tradingPassword) {
    throw UnimplementedError();
  }

  @override
  Future<bool?> checkSession(String sessionToken) {
    throw UnimplementedError();
  }

  @override
  Future<AccountModel?> login(String? loginName, String? passWord) async {
    Map<String, dynamic> params = {
      "LoginName": loginName!,
      "Password": passWord!,
      "IsMobile": "Y",
      "Referer": "EzMobileTrading",
      "BrowserName": "EzMobileTrading",
      "Source": "2",
      "UserAgent": '',
      "IpClient": '0.0.0.0'
    };
    var response = await _stockGatewaySerivce.postAsync('account/login',params);
    return AccountModel.fromJson(response.data);
  }

  @override
  Future<AccountModel?> logout(String sessionToken) {
    throw UnimplementedError();
  }
}
