// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyModelImpl _$$MyModelImplFromJson(Map<String, dynamic> json) =>
    _$MyModelImpl(
      result: json['result'] as String?,
      documentation: json['documentation'] as String?,
      termsOfUse: json['terms_of_use'] as String?,
      timeLastUpdateUnix: json['time_last_update_unix'] as int?,
      timeLastUpdateUtc: json['time_last_update_utc'] as String?,
      timeNextUpdateUnix: json['time_next_update_unix'] as int?,
      timeNextUpdateUtc: json['time_next_update_utc'] as String?,
      baseCode: json['base_code'] as String?,
      conversionRates: (json['conversion_rates'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$MyModelImplToJson(_$MyModelImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'documentation': instance.documentation,
      'terms_of_use': instance.termsOfUse,
      'time_last_update_unix': instance.timeLastUpdateUnix,
      'time_last_update_utc': instance.timeLastUpdateUtc,
      'time_next_update_unix': instance.timeNextUpdateUnix,
      'time_next_update_utc': instance.timeNextUpdateUtc,
      'base_code': instance.baseCode,
      'conversion_rates': instance.conversionRates,
    };
