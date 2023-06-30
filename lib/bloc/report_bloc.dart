import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:demo_login/repositories/report/report_repository_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_event.dart';
part 'report_state.dart';
part 'report_bloc.freezed.dart';

class ReportBloc extends Bloc<ReportEvent, ReportState> {
  ReportBloc({required ReportRepositoryType reportRepositoryType}) : super(const _Initial()) {
    _reportRepositoryType = reportRepositoryType;
    on<_Started>(_onStart);
  }
  late final ReportRepositoryType _reportRepositoryType;

  FutureOr<void> _onStart(_Started event, Emitter<ReportState> emit) async {
    await _reportRepositoryType.getAllStockBalance();
  }
}
