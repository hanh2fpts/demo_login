import 'package:freezed_annotation/freezed_annotation.dart';

part 'hose_model.freezed.dart';
part 'hose_model.g.dart';

@freezed
class HoseModel with _$HoseModel {
    const factory HoseModel({

      @JsonKey(name: 'All')  String? all,
      @JsonKey(name: 'VN30')  String? vn30,
      @JsonKey(name: 'VNINDEX')  String? vnindex,
      @JsonKey(name: 'VN100')  String? vn100,
      @JsonKey(name: 'VNALL')  String? vnall,
      @JsonKey(name: 'VNMID')  String? vnmid,
      @JsonKey(name: 'VNSML')  String? vnsml,
      @JsonKey(name: 'VNXALL')  String? vnxall,
    }) = _HoseModel;

    factory HoseModel.fromJson(Map<String, dynamic> json) => _$HoseModelFromJson(json);
}
