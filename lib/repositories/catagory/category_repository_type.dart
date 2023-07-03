import 'package:demo_login/model/category/hose_model.dart';

abstract class CategoryRepositoryType{
  Future<List<HoseModel>?> getHsxCategory();
}