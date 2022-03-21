import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:produts/src/ui/product_success_widget.dart';

import 'bloc/products_bloc.dart';
import 'pages/widgets/error_widget.dart';

class ProductsWidget extends StatelessWidget {
  const ProductsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: ((context, state) {
        return state.status.isSuccess
            ? ProductsSuccessWidget(
                items: state.products,
              )
            : state.status.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : state.status.isError
                    ? const BaseErrorWidget()
                    : const SizedBox();
      }),
    );
  }
}
