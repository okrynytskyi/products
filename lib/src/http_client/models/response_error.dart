import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_error.freezed.dart';
part 'response_error.g.dart';

@freezed
class ResponseError with _$ResponseError {
  factory ResponseError({
    required String error,
  }) = _ResponseError;

  factory ResponseError.fromJson(Map<String, dynamic> json) =>
      _$ResponseErrorFromJson(json);
}

class ServerErrorException implements Exception {
  ServerErrorException({
    required this.cause,
    required this.code,
  });
  ResponseError cause;
  int code;
}
