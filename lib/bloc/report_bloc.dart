import 'dart:async';

import 'package:demo_login/repositories/catagory/category_repository_type.dart';
import 'package:demo_login/repositories/report/report_repository_type.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_event.dart';
part 'report_state.dart';
part 'report_bloc.freezed.dart';

class ReportBloc extends Bloc<ReportEvent, ReportState> {
  ReportBloc({
    required CategoryRepositoryType categoryRepositoryType,
    required ReportRepositoryType reportRepositoryType,
  }) : super(const _Initial()) {
    _categoryRepositoryType = categoryRepositoryType;
    _reportRepositoryType = reportRepositoryType;
    on<_Started>(_onStart);
  }
  late final CategoryRepositoryType _categoryRepositoryType;
  late final ReportRepositoryType _reportRepositoryType;
  FutureOr<void> _onStart(_Started event, Emitter<ReportState> emit) async {
    var data = await _categoryRepositoryType.getHsxCategory();
    if (data != null) {
      for (var element in data) {
        print(element.all);
        print('\n');
        print(element.vn100);
      }
    }

    var data1 = await _reportRepositoryType.getAllStockBalance();

    for (var element in data1!) {
      print('$element\n');
    }
  }
}
