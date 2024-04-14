// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyModel _$MyModelFromJson(Map<String, dynamic> json) {
  return _MyModel.fromJson(json);
}

/// @nodoc
mixin _$MyModel {
  @JsonKey(name: "result")
  String? get result => throw _privateConstructorUsedError;
  @JsonKey(name: "documentation")
  String? get documentation => throw _privateConstructorUsedError;
  @JsonKey(name: "terms_of_use")
  String? get termsOfUse => throw _privateConstructorUsedError;
  @JsonKey(name: "time_last_update_unix")
  int? get timeLastUpdateUnix => throw _privateConstructorUsedError;
  @JsonKey(name: "time_last_update_utc")
  String? get timeLastUpdateUtc => throw _privateConstructorUsedError;
  @JsonKey(name: "time_next_update_unix")
  int? get timeNextUpdateUnix => throw _privateConstructorUsedError;
  @JsonKey(name: "time_next_update_utc")
  String? get timeNextUpdateUtc => throw _privateConstructorUsedError;
  @JsonKey(name: "base_code")
  String? get baseCode => throw _privateConstructorUsedError;
  @JsonKey(name: "conversion_rates")
  Map<String, double>? get conversionRates =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyModelCopyWith<MyModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyModelCopyWith<$Res> {
  factory $MyModelCopyWith(MyModel value, $Res Function(MyModel) then) =
      _$MyModelCopyWithImpl<$Res, MyModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "result") String? result,
      @JsonKey(name: "documentation") String? documentation,
      @JsonKey(name: "terms_of_use") String? termsOfUse,
      @JsonKey(name: "time_last_update_unix") int? timeLastUpdateUnix,
      @JsonKey(name: "time_last_update_utc") String? timeLastUpdateUtc,
      @JsonKey(name: "time_next_update_unix") int? timeNextUpdateUnix,
      @JsonKey(name: "time_next_update_utc") String? timeNextUpdateUtc,
      @JsonKey(name: "base_code") String? baseCode,
      @JsonKey(name: "conversion_rates") Map<String, double>? conversionRates});
}

/// @nodoc
class _$MyModelCopyWithImpl<$Res, $Val extends MyModel>
    implements $MyModelCopyWith<$Res> {
  _$MyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? documentation = freezed,
    Object? termsOfUse = freezed,
    Object? timeLastUpdateUnix = freezed,
    Object? timeLastUpdateUtc = freezed,
    Object? timeNextUpdateUnix = freezed,
    Object? timeNextUpdateUtc = freezed,
    Object? baseCode = freezed,
    Object? conversionRates = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as String?,
      termsOfUse: freezed == termsOfUse
          ? _value.termsOfUse
          : termsOfUse // ignore: cast_nullable_to_non_nullable
              as String?,
      timeLastUpdateUnix: freezed == timeLastUpdateUnix
          ? _value.timeLastUpdateUnix
          : timeLastUpdateUnix // ignore: cast_nullable_to_non_nullable
              as int?,
      timeLastUpdateUtc: freezed == timeLastUpdateUtc
          ? _value.timeLastUpdateUtc
          : timeLastUpdateUtc // ignore: cast_nullable_to_non_nullable
              as String?,
      timeNextUpdateUnix: freezed == timeNextUpdateUnix
          ? _value.timeNextUpdateUnix
          : timeNextUpdateUnix // ignore: cast_nullable_to_non_nullable
              as int?,
      timeNextUpdateUtc: freezed == timeNextUpdateUtc
          ? _value.timeNextUpdateUtc
          : timeNextUpdateUtc // ignore: cast_nullable_to_non_nullable
              as String?,
      baseCode: freezed == baseCode
          ? _value.baseCode
          : baseCode // ignore: cast_nullable_to_non_nullable
              as String?,
      conversionRates: freezed == conversionRates
          ? _value.conversionRates
          : conversionRates // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyModelImplCopyWith<$Res> implements $MyModelCopyWith<$Res> {
  factory _$$MyModelImplCopyWith(
          _$MyModelImpl value, $Res Function(_$MyModelImpl) then) =
      __$$MyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "result") String? result,
      @JsonKey(name: "documentation") String? documentation,
      @JsonKey(name: "terms_of_use") String? termsOfUse,
      @JsonKey(name: "time_last_update_unix") int? timeLastUpdateUnix,
      @JsonKey(name: "time_last_update_utc") String? timeLastUpdateUtc,
      @JsonKey(name: "time_next_update_unix") int? timeNextUpdateUnix,
      @JsonKey(name: "time_next_update_utc") String? timeNextUpdateUtc,
      @JsonKey(name: "base_code") String? baseCode,
      @JsonKey(name: "conversion_rates") Map<String, double>? conversionRates});
}

/// @nodoc
class __$$MyModelImplCopyWithImpl<$Res>
    extends _$MyModelCopyWithImpl<$Res, _$MyModelImpl>
    implements _$$MyModelImplCopyWith<$Res> {
  __$$MyModelImplCopyWithImpl(
      _$MyModelImpl _value, $Res Function(_$MyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? documentation = freezed,
    Object? termsOfUse = freezed,
    Object? timeLastUpdateUnix = freezed,
    Object? timeLastUpdateUtc = freezed,
    Object? timeNextUpdateUnix = freezed,
    Object? timeNextUpdateUtc = freezed,
    Object? baseCode = freezed,
    Object? conversionRates = freezed,
  }) {
    return _then(_$MyModelImpl(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as String?,
      termsOfUse: freezed == termsOfUse
          ? _value.termsOfUse
          : termsOfUse // ignore: cast_nullable_to_non_nullable
              as String?,
      timeLastUpdateUnix: freezed == timeLastUpdateUnix
          ? _value.timeLastUpdateUnix
          : timeLastUpdateUnix // ignore: cast_nullable_to_non_nullable
              as int?,
      timeLastUpdateUtc: freezed == timeLastUpdateUtc
          ? _value.timeLastUpdateUtc
          : timeLastUpdateUtc // ignore: cast_nullable_to_non_nullable
              as String?,
      timeNextUpdateUnix: freezed == timeNextUpdateUnix
          ? _value.timeNextUpdateUnix
          : timeNextUpdateUnix // ignore: cast_nullable_to_non_nullable
              as int?,
      timeNextUpdateUtc: freezed == timeNextUpdateUtc
          ? _value.timeNextUpdateUtc
          : timeNextUpdateUtc // ignore: cast_nullable_to_non_nullable
              as String?,
      baseCode: freezed == baseCode
          ? _value.baseCode
          : baseCode // ignore: cast_nullable_to_non_nullable
              as String?,
      conversionRates: freezed == conversionRates
          ? _value._conversionRates
          : conversionRates // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyModelImpl implements _MyModel {
  const _$MyModelImpl(
      {@JsonKey(name: "result") this.result,
      @JsonKey(name: "documentation") this.documentation,
      @JsonKey(name: "terms_of_use") this.termsOfUse,
      @JsonKey(name: "time_last_update_unix") this.timeLastUpdateUnix,
      @JsonKey(name: "time_last_update_utc") this.timeLastUpdateUtc,
      @JsonKey(name: "time_next_update_unix") this.timeNextUpdateUnix,
      @JsonKey(name: "time_next_update_utc") this.timeNextUpdateUtc,
      @JsonKey(name: "base_code") this.baseCode,
      @JsonKey(name: "conversion_rates")
      final Map<String, double>? conversionRates})
      : _conversionRates = conversionRates;

  factory _$MyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyModelImplFromJson(json);

  @override
  @JsonKey(name: "result")
  final String? result;
  @override
  @JsonKey(name: "documentation")
  final String? documentation;
  @override
  @JsonKey(name: "terms_of_use")
  final String? termsOfUse;
  @override
  @JsonKey(name: "time_last_update_unix")
  final int? timeLastUpdateUnix;
  @override
  @JsonKey(name: "time_last_update_utc")
  final String? timeLastUpdateUtc;
  @override
  @JsonKey(name: "time_next_update_unix")
  final int? timeNextUpdateUnix;
  @override
  @JsonKey(name: "time_next_update_utc")
  final String? timeNextUpdateUtc;
  @override
  @JsonKey(name: "base_code")
  final String? baseCode;
  final Map<String, double>? _conversionRates;
  @override
  @JsonKey(name: "conversion_rates")
  Map<String, double>? get conversionRates {
    final value = _conversionRates;
    if (value == null) return null;
    if (_conversionRates is EqualUnmodifiableMapView) return _conversionRates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MyModel(result: $result, documentation: $documentation, termsOfUse: $termsOfUse, timeLastUpdateUnix: $timeLastUpdateUnix, timeLastUpdateUtc: $timeLastUpdateUtc, timeNextUpdateUnix: $timeNextUpdateUnix, timeNextUpdateUtc: $timeNextUpdateUtc, baseCode: $baseCode, conversionRates: $conversionRates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyModelImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.documentation, documentation) ||
                other.documentation == documentation) &&
            (identical(other.termsOfUse, termsOfUse) ||
                other.termsOfUse == termsOfUse) &&
            (identical(other.timeLastUpdateUnix, timeLastUpdateUnix) ||
                other.timeLastUpdateUnix == timeLastUpdateUnix) &&
            (identical(other.timeLastUpdateUtc, timeLastUpdateUtc) ||
                other.timeLastUpdateUtc == timeLastUpdateUtc) &&
            (identical(other.timeNextUpdateUnix, timeNextUpdateUnix) ||
                other.timeNextUpdateUnix == timeNextUpdateUnix) &&
            (identical(other.timeNextUpdateUtc, timeNextUpdateUtc) ||
                other.timeNextUpdateUtc == timeNextUpdateUtc) &&
            (identical(other.baseCode, baseCode) ||
                other.baseCode == baseCode) &&
            const DeepCollectionEquality()
                .equals(other._conversionRates, _conversionRates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      result,
      documentation,
      termsOfUse,
      timeLastUpdateUnix,
      timeLastUpdateUtc,
      timeNextUpdateUnix,
      timeNextUpdateUtc,
      baseCode,
      const DeepCollectionEquality().hash(_conversionRates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyModelImplCopyWith<_$MyModelImpl> get copyWith =>
      __$$MyModelImplCopyWithImpl<_$MyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyModelImplToJson(
      this,
    );
  }
}

abstract class _MyModel implements MyModel {
  const factory _MyModel(
      {@JsonKey(name: "result") final String? result,
      @JsonKey(name: "documentation") final String? documentation,
      @JsonKey(name: "terms_of_use") final String? termsOfUse,
      @JsonKey(name: "time_last_update_unix") final int? timeLastUpdateUnix,
      @JsonKey(name: "time_last_update_utc") final String? timeLastUpdateUtc,
      @JsonKey(name: "time_next_update_unix") final int? timeNextUpdateUnix,
      @JsonKey(name: "time_next_update_utc") final String? timeNextUpdateUtc,
      @JsonKey(name: "base_code") final String? baseCode,
      @JsonKey(name: "conversion_rates")
      final Map<String, double>? conversionRates}) = _$MyModelImpl;

  factory _MyModel.fromJson(Map<String, dynamic> json) = _$MyModelImpl.fromJson;

  @override
  @JsonKey(name: "result")
  String? get result;
  @override
  @JsonKey(name: "documentation")
  String? get documentation;
  @override
  @JsonKey(name: "terms_of_use")
  String? get termsOfUse;
  @override
  @JsonKey(name: "time_last_update_unix")
  int? get timeLastUpdateUnix;
  @override
  @JsonKey(name: "time_last_update_utc")
  String? get timeLastUpdateUtc;
  @override
  @JsonKey(name: "time_next_update_unix")
  int? get timeNextUpdateUnix;
  @override
  @JsonKey(name: "time_next_update_utc")
  String? get timeNextUpdateUtc;
  @override
  @JsonKey(name: "base_code")
  String? get baseCode;
  @override
  @JsonKey(name: "conversion_rates")
  Map<String, double>? get conversionRates;
  @override
  @JsonKey(ignore: true)
  _$$MyModelImplCopyWith<_$MyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
