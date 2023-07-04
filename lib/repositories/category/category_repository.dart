import 'package:demo_login/model/category/hose_model.dart';
import 'package:demo_login/repositories/category/category_repository_type.dart';
import 'package:demo_login/services/stock_gateway_service.dart';

class CategoryRepository implements CategoryRepositoryType {
  CategoryRepository({required StockGatewaySerivce stockGatewaySerivce})
      : _stockGatewaySerivce = stockGatewaySerivce;
  late final StockGatewaySerivce _stockGatewaySerivce;
  @override
  Future<List<HoseModel>?> getHsxCategory() async {
    try {
      Map<String, dynamic> params = {};
      var response = await _stockGatewaySerivce.getAsync('s5g/vnx', params);
      var listHose = List<HoseModel>.from(response.data!.map((e) => HoseModel.fromJson(e)));
      return listHose;
    } catch (e) {
      print(e);
    }
    return null;
  }
}
