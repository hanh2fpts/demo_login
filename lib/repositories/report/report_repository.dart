import 'package:demo_login/model/report/stock_balance.dart';
import 'package:demo_login/repositories/report/report_repository_type.dart';
import 'package:demo_login/services/stock_gateway_service.dart';

class ReportRepository implements ReportRepositoryType {
  ReportRepository({required StockGatewaySerivce stockGatewaySerivce})
      : _stockGatewaySerivce = stockGatewaySerivce;
  late final StockGatewaySerivce _stockGatewaySerivce;
  @override
  Future<List<StockBalance>?> getAllStockBalance() async {
    Map<String, dynamic> params = {'exchange': 'ALL'};
    var response = await _stockGatewaySerivce.getAsync<List<StockBalance>?>(
        'report/marliststockblance', params);
    print(response.data);
    return response.data;
  }
}

