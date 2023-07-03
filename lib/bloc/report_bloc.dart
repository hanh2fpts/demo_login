import 'dart:async';

import 'package:demo_login/repositories/catagory/category_repository_type.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_event.dart';
part 'report_state.dart';
part 'report_bloc.freezed.dart';

class ReportBloc extends Bloc<ReportEvent, ReportState> {
  ReportBloc({required CategoryRepositoryType categoryRepositoryType}) : super(const _Initial()) {
    _categoryRepositoryType = categoryRepositoryType;
    on<_Started>(_onStart);
  }
  late final CategoryRepositoryType _categoryRepositoryType;

  FutureOr<void> _onStart(_Started event, Emitter<ReportState> emit) async {
    var data = await _categoryRepositoryType.getHsxCategory();
    if (data != null) {
      for (var element in data) {
        print(element.all);
        print('\n');
        print(element.vn100);
      }
    }
  }
}
