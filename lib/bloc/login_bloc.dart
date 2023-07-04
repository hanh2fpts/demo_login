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
  LoginBloc(
      {required AccountRepositoryType accountRepositoryType, required FlutterSecureStorage storage})
      : super(const _Initial()) {
    _accountRepositoryType = accountRepositoryType;
    _storage = storage;
    on<_Logined>(_onLogin);
  }
  late final AccountRepositoryType _accountRepositoryType;
  late final FlutterSecureStorage _storage;
  FutureOr<void> _onLogin(_Logined event, Emitter<LoginState> emit) async {
    var userName = event.userName;
    var passWorld = event.passWorld;
    emit(const LoginState.loading());
    var result = await _accountRepositoryType.login('058C008899', 'fpts1234');
    if (result != null) {
      if (result.errorCode == 0) {
        await _storage.write(key: AppConfig.clientCode, value: result.clientCode);
        await _storage.write(key: AppConfig.passWord, value: passWorld);
        await _storage.write(key: AppConfig.tokenKey, value: result.jwt);
        await _storage.write(key: AppConfig.sessionKey, value: result.sessionNo);
        await _storage.write(key: AppConfig.userName, value: result.clientName);
      }
    }
    if (result!.loginStatus == 0) {
      emit(const LoginState.loginSuccess());
    }
  }
}
