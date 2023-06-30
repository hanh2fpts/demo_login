// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StockBalance _$StockBalanceFromJson(Map<String, dynamic> json) {
  return _StockBalance.fromJson(json);
}

/// @nodoc
mixin _$StockBalance {
  @JsonKey(name: 'ACLIENTCODE')
  String? get clientCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'AMARNUM')
  String? get marNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'ASTOCKCODE')
  String? get stockCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'AEXCHANGE')
  String? get exchange => throw _privateConstructorUsedError;
  @JsonKey(name: 'ACONTRACTDATE')
  String? get contractDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'AVAILQUANTITY')
  double? get availQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'APAYPENDING')
  double? get payPending => throw _privateConstructorUsedError;
  @JsonKey(name: 'AMARRATE')
  double? get marRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'ACONTRACTTYPE')
  String? get contractType => throw _privateConstructorUsedError;
  @JsonKey(name: 'ALEVELTEXT_VN')
  String? get levelTextVn => throw _privateConstructorUsedError;
  @JsonKey(name: 'ALEVELTEXT_EN')
  String? get levelTextEn => throw _privateConstructorUsedError;
  @JsonKey(name: 'AENDDATE')
  String? get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockBalanceCopyWith<StockBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockBalanceCopyWith<$Res> {
  factory $StockBalanceCopyWith(
          StockBalance value, $Res Function(StockBalance) then) =
      _$StockBalanceCopyWithImpl<$Res, StockBalance>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ACLIENTCODE') String? clientCode,
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
      @JsonKey(name: 'AENDDATE') String? endDate});
}

/// @nodoc
class _$StockBalanceCopyWithImpl<$Res, $Val extends StockBalance>
    implements $StockBalanceCopyWith<$Res> {
  _$StockBalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientCode = freezed,
    Object? marNum = freezed,
    Object? stockCode = freezed,
    Object? exchange = freezed,
    Object? contractDate = freezed,
    Object? availQuantity = freezed,
    Object? payPending = freezed,
    Object? marRate = freezed,
    Object? contractType = freezed,
    Object? levelTextVn = freezed,
    Object? levelTextEn = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      clientCode: freezed == clientCode
          ? _value.clientCode
          : clientCode // ignore: cast_nullable_to_non_nullable
              as String?,
      marNum: freezed == marNum
          ? _value.marNum
          : marNum // ignore: cast_nullable_to_non_nullable
              as String?,
      stockCode: freezed == stockCode
          ? _value.stockCode
          : stockCode // ignore: cast_nullable_to_non_nullable
              as String?,
      exchange: freezed == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String?,
      contractDate: freezed == contractDate
          ? _value.contractDate
          : contractDate // ignore: cast_nullable_to_non_nullable
              as String?,
      availQuantity: freezed == availQuantity
          ? _value.availQuantity
          : availQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      payPending: freezed == payPending
          ? _value.payPending
          : payPending // ignore: cast_nullable_to_non_nullable
              as double?,
      marRate: freezed == marRate
          ? _value.marRate
          : marRate // ignore: cast_nullable_to_non_nullable
              as double?,
      contractType: freezed == contractType
          ? _value.contractType
          : contractType // ignore: cast_nullable_to_non_nullable
              as String?,
      levelTextVn: freezed == levelTextVn
          ? _value.levelTextVn
          : levelTextVn // ignore: cast_nullable_to_non_nullable
              as String?,
      levelTextEn: freezed == levelTextEn
          ? _value.levelTextEn
          : levelTextEn // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StockBalanceCopyWith<$Res>
    implements $StockBalanceCopyWith<$Res> {
  factory _$$_StockBalanceCopyWith(
          _$_StockBalance value, $Res Function(_$_StockBalance) then) =
      __$$_StockBalanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ACLIENTCODE') String? clientCode,
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
      @JsonKey(name: 'AENDDATE') String? endDate});
}

/// @nodoc
class __$$_StockBalanceCopyWithImpl<$Res>
    extends _$StockBalanceCopyWithImpl<$Res, _$_StockBalance>
    implements _$$_StockBalanceCopyWith<$Res> {
  __$$_StockBalanceCopyWithImpl(
      _$_StockBalance _value, $Res Function(_$_StockBalance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientCode = freezed,
    Object? marNum = freezed,
    Object? stockCode = freezed,
    Object? exchange = freezed,
    Object? contractDate = freezed,
    Object? availQuantity = freezed,
    Object? payPending = freezed,
    Object? marRate = freezed,
    Object? contractType = freezed,
    Object? levelTextVn = freezed,
    Object? levelTextEn = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$_StockBalance(
      clientCode: freezed == clientCode
          ? _value.clientCode
          : clientCode // ignore: cast_nullable_to_non_nullable
              as String?,
      marNum: freezed == marNum
          ? _value.marNum
          : marNum // ignore: cast_nullable_to_non_nullable
              as String?,
      stockCode: freezed == stockCode
          ? _value.stockCode
          : stockCode // ignore: cast_nullable_to_non_nullable
              as String?,
      exchange: freezed == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String?,
      contractDate: freezed == contractDate
          ? _value.contractDate
          : contractDate // ignore: cast_nullable_to_non_nullable
              as String?,
      availQuantity: freezed == availQuantity
          ? _value.availQuantity
          : availQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      payPending: freezed == payPending
          ? _value.payPending
          : payPending // ignore: cast_nullable_to_non_nullable
              as double?,
      marRate: freezed == marRate
          ? _value.marRate
          : marRate // ignore: cast_nullable_to_non_nullable
              as double?,
      contractType: freezed == contractType
          ? _value.contractType
          : contractType // ignore: cast_nullable_to_non_nullable
              as String?,
      levelTextVn: freezed == levelTextVn
          ? _value.levelTextVn
          : levelTextVn // ignore: cast_nullable_to_non_nullable
              as String?,
      levelTextEn: freezed == levelTextEn
          ? _value.levelTextEn
          : levelTextEn // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StockBalance implements _StockBalance {
  _$_StockBalance(
      {@JsonKey(name: 'ACLIENTCODE') this.clientCode,
      @JsonKey(name: 'AMARNUM') this.marNum,
      @JsonKey(name: 'ASTOCKCODE') this.stockCode,
      @JsonKey(name: 'AEXCHANGE') this.exchange,
      @JsonKey(name: 'ACONTRACTDATE') this.contractDate,
      @JsonKey(name: 'AVAILQUANTITY') this.availQuantity,
      @JsonKey(name: 'APAYPENDING') this.payPending,
      @JsonKey(name: 'AMARRATE') this.marRate,
      @JsonKey(name: 'ACONTRACTTYPE') this.contractType,
      @JsonKey(name: 'ALEVELTEXT_VN') this.levelTextVn,
      @JsonKey(name: 'ALEVELTEXT_EN') this.levelTextEn,
      @JsonKey(name: 'AENDDATE') this.endDate});

  factory _$_StockBalance.fromJson(Map<String, dynamic> json) =>
      _$$_StockBalanceFromJson(json);

  @override
  @JsonKey(name: 'ACLIENTCODE')
  final String? clientCode;
  @override
  @JsonKey(name: 'AMARNUM')
  final String? marNum;
  @override
  @JsonKey(name: 'ASTOCKCODE')
  final String? stockCode;
  @override
  @JsonKey(name: 'AEXCHANGE')
  final String? exchange;
  @override
  @JsonKey(name: 'ACONTRACTDATE')
  final String? contractDate;
  @override
  @JsonKey(name: 'AVAILQUANTITY')
  final double? availQuantity;
  @override
  @JsonKey(name: 'APAYPENDING')
  final double? payPending;
  @override
  @JsonKey(name: 'AMARRATE')
  final double? marRate;
  @override
  @JsonKey(name: 'ACONTRACTTYPE')
  final String? contractType;
  @override
  @JsonKey(name: 'ALEVELTEXT_VN')
  final String? levelTextVn;
  @override
  @JsonKey(name: 'ALEVELTEXT_EN')
  final String? levelTextEn;
  @override
  @JsonKey(name: 'AENDDATE')
  final String? endDate;

  @override
  String toString() {
    return 'StockBalance(clientCode: $clientCode, marNum: $marNum, stockCode: $stockCode, exchange: $exchange, contractDate: $contractDate, availQuantity: $availQuantity, payPending: $payPending, marRate: $marRate, contractType: $contractType, levelTextVn: $levelTextVn, levelTextEn: $levelTextEn, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StockBalance &&
            (identical(other.clientCode, clientCode) ||
                other.clientCode == clientCode) &&
            (identical(other.marNum, marNum) || other.marNum == marNum) &&
            (identical(other.stockCode, stockCode) ||
                other.stockCode == stockCode) &&
            (identical(other.exchange, exchange) ||
                other.exchange == exchange) &&
            (identical(other.contractDate, contractDate) ||
                other.contractDate == contractDate) &&
            (identical(other.availQuantity, availQuantity) ||
                other.availQuantity == availQuantity) &&
            (identical(other.payPending, payPending) ||
                other.payPending == payPending) &&
            (identical(other.marRate, marRate) || other.marRate == marRate) &&
            (identical(other.contractType, contractType) ||
                other.contractType == contractType) &&
            (identical(other.levelTextVn, levelTextVn) ||
                other.levelTextVn == levelTextVn) &&
            (identical(other.levelTextEn, levelTextEn) ||
                other.levelTextEn == levelTextEn) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      clientCode,
      marNum,
      stockCode,
      exchange,
      contractDate,
      availQuantity,
      payPending,
      marRate,
      contractType,
      levelTextVn,
      levelTextEn,
      endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StockBalanceCopyWith<_$_StockBalance> get copyWith =>
      __$$_StockBalanceCopyWithImpl<_$_StockBalance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StockBalanceToJson(
      this,
    );
  }
}

abstract class _StockBalance implements StockBalance {
  factory _StockBalance(
      {@JsonKey(name: 'ACLIENTCODE') final String? clientCode,
      @JsonKey(name: 'AMARNUM') final String? marNum,
      @JsonKey(name: 'ASTOCKCODE') final String? stockCode,
      @JsonKey(name: 'AEXCHANGE') final String? exchange,
      @JsonKey(name: 'ACONTRACTDATE') final String? contractDate,
      @JsonKey(name: 'AVAILQUANTITY') final double? availQuantity,
      @JsonKey(name: 'APAYPENDING') final double? payPending,
      @JsonKey(name: 'AMARRATE') final double? marRate,
      @JsonKey(name: 'ACONTRACTTYPE') final String? contractType,
      @JsonKey(name: 'ALEVELTEXT_VN') final String? levelTextVn,
      @JsonKey(name: 'ALEVELTEXT_EN') final String? levelTextEn,
      @JsonKey(name: 'AENDDATE') final String? endDate}) = _$_StockBalance;

  factory _StockBalance.fromJson(Map<String, dynamic> json) =
      _$_StockBalance.fromJson;

  @override
  @JsonKey(name: 'ACLIENTCODE')
  String? get clientCode;
  @override
  @JsonKey(name: 'AMARNUM')
  String? get marNum;
  @override
  @JsonKey(name: 'ASTOCKCODE')
  String? get stockCode;
  @override
  @JsonKey(name: 'AEXCHANGE')
  String? get exchange;
  @override
  @JsonKey(name: 'ACONTRACTDATE')
  String? get contractDate;
  @override
  @JsonKey(name: 'AVAILQUANTITY')
  double? get availQuantity;
  @override
  @JsonKey(name: 'APAYPENDING')
  double? get payPending;
  @override
  @JsonKey(name: 'AMARRATE')
  double? get marRate;
  @override
  @JsonKey(name: 'ACONTRACTTYPE')
  String? get contractType;
  @override
  @JsonKey(name: 'ALEVELTEXT_VN')
  String? get levelTextVn;
  @override
  @JsonKey(name: 'ALEVELTEXT_EN')
  String? get levelTextEn;
  @override
  @JsonKey(name: 'AENDDATE')
  String? get endDate;
  @override
  @JsonKey(ignore: true)
  _$$_StockBalanceCopyWith<_$_StockBalance> get copyWith =>
      throw _privateConstructorUsedError;
}
