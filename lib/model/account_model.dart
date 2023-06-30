// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'account_model.g.dart';
part 'account_model.freezed.dart';
@freezed
class AccountModel with _$AccountModel {
  const factory AccountModel({
    @JsonKey(name: 'PassWord') String? passWord,
    @JsonKey(name: 'TradingPassword') String? tradingPassword,
    @JsonKey(name: 'LoginName') String? loginName,
    @JsonKey(name: 'Source') String? source,
    @JsonKey(name: 'IpClient') String? ipClient,
    @JsonKey(name: 'IpServer') String? ipServer,
    @JsonKey(name: 'AessionToken') String? aessionToken,
    @JsonKey(name: 'Referer') String? referer,
    @JsonKey(name: 'UserAgent') String? userAgent,
    @JsonKey(name: 'Browser') String? browser,
    @JsonKey(name: 'IsMobile') String? isMobile,
    @JsonKey(name: 'BrowserName') String? browserName,
    @JsonKey(name: 'BrowserVers') String? browserVers,
    @JsonKey(name: 'ClientCode') String? clientCode,
    @JsonKey(name: 'ClientName') String? clientName,
    @JsonKey(name: 'SessionNo') String? sessionNo,
    @JsonKey(name: 'ErrorCode') int? errorCode,
    @JsonKey(name: 'Message') String? message,
    @JsonKey(name: 'CheckSession') int? checkSession,
    @JsonKey(name: 'LoginStatus') int? loginStatus,
    @JsonKey(name: 'RsaToken') int? rsaToken,
    @JsonKey(name: 'CheckTradingPassword') int? checkTradingPassword,
    @JsonKey(name: 'RsaResult') int? rsaResult,
    @JsonKey(name: 'Jwt') String? jwt,
    @JsonKey(name: 'IsCheckSessionSuccess') bool? isCheckSessionSuccess,
    @JsonKey(name: 'IsFirstLogin') bool? isFirstLogin,
    @JsonKey(name: 'IsRsaTokenTradingPassword') bool? isRsaTokenTradingPassword,
    @JsonKey(name: 'RsaMessage') String? rsaMessage,
    @JsonKey(name: 'CheckPass2') int? checkPass2,
    @JsonKey(name: 'TradingPass1By1') int? tradingPass1By1,
    @JsonKey(name: 'OldPass') String? oldPass,
    @JsonKey(name: 'NewPass') String? newPass,
    @JsonKey(name: 'OldTradePass') String? oldTradePass,
    @JsonKey(name: 'NewTradePass') String? newTradePass,
    @JsonKey(name: 'IntResult') int? intResult,
    @JsonKey(name: 'Areason') int? areason,
  }) = _AccountModel;

  factory AccountModel.fromJson(Map<String, dynamic> json) => _$AccountModelFromJson(json);
}
