import 'package:demo_login/model/report/stock_balance.dart';

abstract class ReportRepositoryType {
  Future<List<StockBalance>?> getAllStockBalance();
}
