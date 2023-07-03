import 'package:demo_login/injection/injection.dart';
import 'package:demo_login/repositories/account_repository.dart';
import 'package:demo_login/repositories/account_repository_type.dart';
import 'package:demo_login/repositories/catagory/category_repository.dart';
import 'package:demo_login/repositories/catagory/category_repository_type.dart';
import 'package:demo_login/repositories/report/report_repository.dart';
import 'package:demo_login/repositories/report/report_repository_type.dart';

class RepositoryModule {
  RepositoryModule._();
  static void init() {
    final injection = Injection.instance;

    injection
      ..registerFactory<AccountRepositoryType>(
          () => AccountRepository(stockGatewaySerivce: injection()))
      ..registerFactory<ReportRepositoryType>(
          () => ReportRepository(stockGatewaySerivce: injection()))
      ..registerFactory<CategoryRepositoryType>(
          () => CategoryRepository(stockGatewaySerivce: injection()));
  }
}
