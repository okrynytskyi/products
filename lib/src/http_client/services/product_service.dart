import 'package:chopper/chopper.dart';

import '../converter/json_serializable_converter.dart';
import '../models/product.dart';

part 'product_service.chopper.dart';

@ChopperApi()
abstract class ProductService extends ChopperService {
  // static ProductService create([ChopperClient? client]) => _$ProductService(client);

  static ProductService create() {
    ChopperClient client = ChopperClient(
      baseUrl: 'https://fakestoreapi.com',
      converter: JsonSerializableConverter(),
      errorConverter: const JsonConverter(),
      services: [
        _$ProductService(),
      ],
    );
    return _$ProductService(client);
  }

  @Get(path: '/products')
  Future<Response<List<Product>>> products();
}
