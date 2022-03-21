import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:produts/src/http_client/services/product_service.dart';
import 'package:produts/src/repository/repository.dart';

import '../../../generated/l10n.dart';
import '../../settings/settings_view.dart';
import '../bloc/products_bloc.dart';
import '../products_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(S.current.products),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to the settings page. If the user leaves and returns
              // to the app after it has been killed while running in the
              // background, the navigation stack is restored.
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),
      body: RepositoryProvider(
        create: ((context) => ProductRepository(
              service: ProductService.create(),
            )),
        child: BlocProvider<ProductsBloc>(
          create: (BuildContext context) {
            return ProductsBloc(
              repository: context.read<ProductRepository>(),
            )..add(
                GetProducts(),
              );
          },
          child: const ProductsWidget(),
        ),
      ),
    );
  }
}
