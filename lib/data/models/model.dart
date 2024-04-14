import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

part 'model.g.dart';

@freezed
class MyModel with _$MyModel {
  const factory MyModel({
    @JsonKey(name: "result") String? result,
    @JsonKey(name: "documentation") String? documentation,
    @JsonKey(name: "terms_of_use") String? termsOfUse,
    @JsonKey(name: "time_last_update_unix") int? timeLastUpdateUnix,
    @JsonKey(name: "time_last_update_utc") String? timeLastUpdateUtc,
    @JsonKey(name: "time_next_update_unix") int? timeNextUpdateUnix,
    @JsonKey(name: "time_next_update_utc") String? timeNextUpdateUtc,
    @JsonKey(name: "base_code") String? baseCode,
    @JsonKey(name: "conversion_rates") Map<String, double>? conversionRates,
  }) = _MyModel;

  factory MyModel.fromJson(Map<String, dynamic> json) =>
      _$MyModelFromJson(json);
}
