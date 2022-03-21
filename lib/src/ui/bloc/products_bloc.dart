import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:produts/src/repository/repository.dart';

import '../../http_client/models/models.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc({required this.repository}) : super(const ProductsState()) {
    on<GetProducts>(_mapProductsEventToState);
  }

  final ProductRepository repository;

  void _mapProductsEventToState(
      GetProducts event, Emitter<ProductsState> emit) async {
    try {
      emit(state.copyWith(status: ProductsStatus.loading));
      final products = await repository.fetch();
      emit(
        state.copyWith(
          products: products,
          status: ProductsStatus.success,
        ),
      );
    } catch (error) {
      // ignore: avoid_print
      print(state.copyWith(status: ProductsStatus.error));
    }
  }
}
