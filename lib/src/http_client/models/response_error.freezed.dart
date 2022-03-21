// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseError _$ResponseErrorFromJson(Map<String, dynamic> json) {
  return _ResponseError.fromJson(json);
}

/// @nodoc
class _$ResponseErrorTearOff {
  const _$ResponseErrorTearOff();

  _ResponseError call({required String error}) {
    return _ResponseError(
      error: error,
    );
  }

  ResponseError fromJson(Map<String, Object?> json) {
    return ResponseError.fromJson(json);
  }
}

/// @nodoc
const $ResponseError = _$ResponseErrorTearOff();

/// @nodoc
mixin _$ResponseError {
  String get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseErrorCopyWith<ResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseErrorCopyWith<$Res> {
  factory $ResponseErrorCopyWith(
          ResponseError value, $Res Function(ResponseError) then) =
      _$ResponseErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$ResponseErrorCopyWithImpl<$Res>
    implements $ResponseErrorCopyWith<$Res> {
  _$ResponseErrorCopyWithImpl(this._value, this._then);

  final ResponseError _value;
  // ignore: unused_field
  final $Res Function(ResponseError) _then;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ResponseErrorCopyWith<$Res>
    implements $ResponseErrorCopyWith<$Res> {
  factory _$ResponseErrorCopyWith(
          _ResponseError value, $Res Function(_ResponseError) then) =
      __$ResponseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String error});
}

/// @nodoc
class __$ResponseErrorCopyWithImpl<$Res>
    extends _$ResponseErrorCopyWithImpl<$Res>
    implements _$ResponseErrorCopyWith<$Res> {
  __$ResponseErrorCopyWithImpl(
      _ResponseError _value, $Res Function(_ResponseError) _then)
      : super(_value, (v) => _then(v as _ResponseError));

  @override
  _ResponseError get _value => super._value as _ResponseError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_ResponseError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseError implements _ResponseError {
  _$_ResponseError({required this.error});

  factory _$_ResponseError.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseErrorFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'ResponseError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$ResponseErrorCopyWith<_ResponseError> get copyWith =>
      __$ResponseErrorCopyWithImpl<_ResponseError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseErrorToJson(this);
  }
}

abstract class _ResponseError implements ResponseError {
  factory _ResponseError({required String error}) = _$_ResponseError;

  factory _ResponseError.fromJson(Map<String, dynamic> json) =
      _$_ResponseError.fromJson;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$ResponseErrorCopyWith<_ResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}
