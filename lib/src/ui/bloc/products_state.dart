part of 'products_bloc.dart';

class ProductsState extends Equatable {
  const ProductsState({
    this.products,
    this.status = ProductsStatus.initial,
  });

  final List<Product>? products;
  final ProductsStatus status;

  @override
  List<Object?> get props => [products, status];

  ProductsState copyWith({List<Product>? products, ProductsStatus? status}) =>
      ProductsState(
        products: products ?? this.products,
        status: status ?? this.status,
      );
}

enum ProductsStatus { initial, success, error, loading }

extension ProductStatusEx on ProductsStatus {
  bool get isInitial => this == ProductsStatus.initial;
  bool get isSuccess => this == ProductsStatus.success;
  bool get isError => this == ProductsStatus.error;
  bool get isLoading => this == ProductsStatus.loading;
}