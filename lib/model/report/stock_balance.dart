// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'stock_balance.g.dart';
part 'stock_balance.freezed.dart';
@freezed
class StockBalance with _$StockBalance {
  factory StockBalance({
    @JsonKey(name: 'ACLIENTCODE') String? clientCode,
    @JsonKey(name: 'AMARNUM') String? marNum,
    @JsonKey(name: 'ASTOCKCODE') String? stockCode,
    @JsonKey(name: 'AEXCHANGE') String? exchange,
    @JsonKey(name: 'ACONTRACTDATE') String? contractDate,
    @JsonKey(name: 'AVAILQUANTITY') double? availQuantity,
    @JsonKey(name: 'APAYPENDING') double? payPending,
    @JsonKey(name: 'AMARRATE') double? marRate,
    @JsonKey(name: 'ACONTRACTTYPE') String? contractType,
    @JsonKey(name: 'ALEVELTEXT_VN') String? levelTextVn,
    @JsonKey(name: 'ALEVELTEXT_EN') String? levelTextEn,
    @JsonKey(name: 'AENDDATE') String? endDate,
  }) = _StockBalance;
  factory StockBalance.fromJson(Map<String, dynamic> json) => _$StockBalanceFromJson(json);
}
