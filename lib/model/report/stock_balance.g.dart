// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StockBalance _$$_StockBalanceFromJson(Map<String, dynamic> json) =>
    _$_StockBalance(
      clientCode: json['ACLIENTCODE'] as String?,
      marNum: json['AMARNUM'] as String?,
      stockCode: json['ASTOCKCODE'] as String?,
      exchange: json['AEXCHANGE'] as String?,
      contractDate: json['ACONTRACTDATE'] as String?,
      availQuantity: (json['AVAILQUANTITY'] as num?)?.toDouble(),
      payPending: (json['APAYPENDING'] as num?)?.toDouble(),
      marRate: (json['AMARRATE'] as num?)?.toDouble(),
      contractType: json['ACONTRACTTYPE'] as String?,
      levelTextVn: json['ALEVELTEXT_VN'] as String?,
      levelTextEn: json['ALEVELTEXT_EN'] as String?,
      endDate: json['AENDDATE'] as String?,
    );

Map<String, dynamic> _$$_StockBalanceToJson(_$_StockBalance instance) =>
    <String, dynamic>{
      'ACLIENTCODE': instance.clientCode,
      'AMARNUM': instance.marNum,
      'ASTOCKCODE': instance.stockCode,
      'AEXCHANGE': instance.exchange,
      'ACONTRACTDATE': instance.contractDate,
      'AVAILQUANTITY': instance.availQuantity,
      'APAYPENDING': instance.payPending,
      'AMARRATE': instance.marRate,
      'ACONTRACTTYPE': instance.contractType,
      'ALEVELTEXT_VN': instance.levelTextVn,
      'ALEVELTEXT_EN': instance.levelTextEn,
      'AENDDATE': instance.endDate,
    };
