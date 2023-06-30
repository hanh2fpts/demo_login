part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;

  const factory LoginEvent.logined({
    required String userName,
    required String passWorld
  }) = _Logined;
}
