import 'package:demo_login/model/account_model.dart';

abstract class AccountRepositoryType {
  Future<AccountModel?> login(String? loginName, String? passWord);
  Future<AccountModel?> logout(String sessionToken);
  Future<AccountModel?> checkPasswordTransaction(String clientCode, String tradingPassword);

  /// check session
  Future<bool?> checkSession(String sessionToken);
}
