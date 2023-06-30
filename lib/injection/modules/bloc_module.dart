import 'package:demo_login/bloc/login_bloc.dart';
import 'package:demo_login/bloc/report_bloc.dart';
import 'package:demo_login/injection/injection.dart';

class BlocModule {
  BlocModule._();
  static void init() {
    final injection = Injection.instance;

    injection.registerFactory<LoginBloc>(
        () => LoginBloc(accountRepositoryType: injection()));

    injection.registerFactory<ReportBloc>(() => ReportBloc(reportRepositoryType: injection()));
  }
}
