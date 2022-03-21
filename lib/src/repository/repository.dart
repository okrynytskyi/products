import 'package:produts/src/http_client/services/product_service.dart';

import '../http_client/models/models.dart';

class ProductRepository {
  const ProductRepository({
    required this.service,
  });

  final ProductService service;

  Future<List<Product>> fetch() async {
    final response = await service.products();
    List<Product> items = response.body!;
    return items;
  }
}
