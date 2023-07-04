import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'response_dto.g.dart';

ResponseDto<T> deserializeResponseDto<T>(Map<String, dynamic> json) {
  return ResponseDto<T>(
    code: json['Code'] as int,
    message: json['Message'] as String,
    data: json['Data'] as T,
  );
}

ResponseDto<List<T>> deserializeListResponseDto<T>(List<Map<String, dynamic>> json) {
  return ResponseDto<List<T>>(
    code: json[0]['Code'] as int,
    message: json[1]['Message'] as String,
    data: json.map((e) => e as T).toList(),
  );
}

Map<String, dynamic> serializeObject<T>(T object) {
  return object as Map<String, dynamic>;
}

List<Map<String, dynamic>> serializeList<T>(List<T> objects) {
  return objects.map((e) => e as Map<String, dynamic>).toList();
}

@JsonSerializable(genericArgumentFactories: true)
class ResponseDto<T> extends Equatable {
  @JsonKey(name: 'Code')
  final int? code;
  @JsonKey(name: 'Message')
  final String? message;
  @JsonKey(name: 'Data')
  final T? data;
  factory ResponseDto.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ResponseDtoFromJson(json, fromJsonT);
  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$ResponseDtoToJson(this, toJsonT);
  const ResponseDto({this.code, this.message, this.data});

  @override
  List<Object?> get props => [code, message, data];
}
