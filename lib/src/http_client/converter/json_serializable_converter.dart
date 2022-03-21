import 'package:chopper/chopper.dart';

import '../models/models.dart';
import '../models/response_error.dart';

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

class JsonSerializableConverter extends JsonConverter {
  Object? _decodeMap<T extends Object?>(Map<String, dynamic> values) {
    final jsonFactory = _factories[T];

    if (jsonFactory == null || jsonFactory is! JsonFactory<T>) {
      if (values.isEmpty) {
        return null;
      }

      /// throw serializer not found error#;
      throw Exception('serializer not found for model "$T"');
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(List values) =>
      values.where((v) => v != null).map<T>((v) => _decode<T>(v)).toList();

  dynamic _decode<T>(entity) {
    if (entity is List) {
      return _decodeList<T>(entity);
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  @override
  Response<ResultType> convertResponse<ResultType, Item>(Response response) {
    final jsonRes = super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(body: _decode<Item>(jsonRes.body));
  }

  @override
  Response convertError<ResultType, Item>(Response response) {
    final jsonRes = super.convertError(response);
    final Map<String, dynamic> body = jsonRes.body;

    try {
      final responseError = ResponseError.fromJson(body);
      throw ServerErrorException(
        cause: responseError,
        code: response.statusCode,
      );
    } on Exception catch (_) {
      rethrow;
    }
  }
}

final Map<Type, JsonFactory> _factories = {
  Product: Product.fromJson,
  Rating: Rating.fromJson
};
