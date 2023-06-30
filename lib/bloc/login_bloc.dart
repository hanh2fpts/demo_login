import 'dart:async';
import 'package:demo_login/repositories/account_repository_type.dart';
import 'package:demo_login/utils/app_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required AccountRepositoryType accountRepositoryType}) : super(const _Initial()) {
    _accountRepositoryType = accountRepositoryType;
    on<_Logined>(_onLogin);
  }
  late final AccountRepositoryType _accountRepositoryType;
  get storage => const FlutterSecureStorage();
  FutureOr<void> _onLogin(_Logined event, Emitter<LoginState> emit) async {
    //var userName = event.userName;
    //var passWorld = event.passWorld;
    emit(const LoginState.loading());
    var result = await _accountRepositoryType.login('058C008899', 'fpts1234');
    storage.write(key: AppConfig.tokenKey, value: result!.jwt);
    if (result.loginStatus == 0) {
      emit(const LoginState.loginSuccess());
    }
  }
}
